import pandas as pd
import csv
from csv import reader
import matplotlib.pyplot as plt
import seaborn as sns
import requests
import re
import json
import datetime
import time
import sqlite3

# --------------------VERİTABANI-------------------#
# -------------------------------------------------#
global curs
global conn
conn = sqlite3.connect('YoutubeApi.db')  # Veritaban bağlantı kısmı
curs = conn.cursor()


#--------------------KANAL ARAMA KISMI---------------------#
#----------------------------------------------------------#
def yt_channel_search(channel_name):
    api_key = "AIzaSyChBjf04ZwwEkulTskkOFh5BBrFbXcyx9Y"
    url = "https://www.googleapis.com/youtube/v3/search"

    parameters = {
        "part": "snippet",
        "q": channel_name,
        "key": api_key,
        "type": "channel",
        "maxResults": 10,
        "order": "videoCount"}

    channel_resp = requests.get(url, params=parameters)

    return channel_resp.json()

channelId_list = []

#-----------Takibe almak istediğiniz kanal ismini channelNamedeğişkenine giriniz-------------#

channelName = "Danla Bilic"
channel_request = yt_channel_search(channelName)
print(channel_request)

#-----------Takibe almak istediğiniz video sayısını videoCount değişkenine giriniz-------------#
videoCount=11



#------------------KANAL İD'SİNE ERİŞİM KISMI-----------------------#
#-------------------------------------------------------------------#

for result in channel_request["items"]:
    for k, v in result["snippet"].items():
        if (k == "title") and (v == channelName):
            channelId = result["snippet"]["channelId"]
            print(channelId)
            channelId_list.append(channelId)
            print("---------------------------")
            print(channelId_list[0])
            print("----------------------------")



# -------------------------KANAL TAKİP KONTROL-------------------------#
# ---------------------------------------------------------------------#
if len(channelId_list)>=1:
    channel = conn.execute("Select channel_id From  Channel_information Where channel_id= ?", (channelId_list[0],))
    conn.commit()
    date = datetime.datetime.now()
    channel = channel.fetchall()
    if channel:
        print("Kanal daha önce takibe alınmış")
    else:
        conn.execute("Insert Into Channel_information (channel_id, channel_name, channel_access_date) \
                                                                    VALUES(?,?,?)", \
                     (channelId_list[0], channelName, date))
        conn.commit()



#-----------------KANAL İD'Sİ İLE VİDEOLARA ERİŞİM------------------#
# ------------------------------------------------------------------#
    def get_videos(channelId):
        api_key = "AIzaSyChBjf04ZwwEkulTskkOFh5BBrFbXcyx9Y"
        url = "https://www.googleapis.com/youtube/v3/search"

        parameters = {
            "part": "snippet",
            "channelId": channelId,
            "key": api_key,
            "order": "date",
            "type": "video",
            "maxResults": videoCount
        }

        video_resp = requests.get(url, params=parameters)

        return video_resp.json()


    recent_videos = get_videos(channelId_list[0])
    print(recent_videos)


#----------------------KANAL İD'Sİ İLE VİDEO İDLERİNİN BULUNMASI------------------------#
#---------------------------------------------------------------------------------------#
    def data_extractor(raw_data, first_loop, second_loop, col_name):
        ext_data = [v for result in raw_data[first_loop] \
                    for k, v in result[second_loop].items() \
                    if k == col_name]

        return ext_data


    video_id = data_extractor(recent_videos, "items", "id", "videoId")
    publish_date = data_extractor(recent_videos, "items", "snippet", "publishedAt")
    title = data_extractor(recent_videos, "items", "snippet", "title")
    desc = data_extractor(recent_videos, "items", "snippet", "description")

    print("************************")
    print(video_id)
    print(publish_date)
    print(title)
    print(desc)


# -------------ERİŞİLEN VİDEOLARIN BİLGİLERİNİ ÇEKME-----------------#
# -------------------------------------------------------------------#
    def get_video_stats(videoId, resource):
        api_key = "AIzaSyChBjf04ZwwEkulTskkOFh5BBrFbXcyx9Y"
        url = "https://www.googleapis.com/youtube/v3/videos"

        parameters = {
            "part": resource,
            "id": videoId,
            "key": api_key,
            "maxResults": "10"
        }

        video_stats_resp = requests.get(url, params=parameters)

        return video_stats_resp.json()


    def get_channel_information():
        video_stats = get_video_stats(video_id, "statistics")
        video_content_details = get_video_stats(video_id, "contentDetails")

        video_views = data_extractor(video_stats, "items", "statistics", "viewCount")
        likes = data_extractor(video_stats, "items", "statistics", "likeCount")
        dislikes = data_extractor(video_stats, "items", "statistics", "dislikeCount")
        favs = data_extractor(video_stats, "items", "statistics", "favoriteCount")
        comments = data_extractor(video_stats, "items", "statistics", "commentCount")
        duration = data_extractor(video_content_details, "items", "contentDetails", "duration")

        print(video_views)
        print(likes)
        print(dislikes)
        print(favs)
        print(comments)
        print(duration)

        lst = zip(video_id, publish_date, title, desc, \
                  video_views, likes, dislikes, \
                  favs, comments, duration)

        video_yt = pd.DataFrame(lst, \
                                  columns=["video_id", "publish_date", "title", "desc",
                                           "video_views", "likes", "dislikes", \
                                           "favs", "comments", "duration"])
        video_yt.to_csv('veriseti.csv', index=False)

    get_channel_information()

#--------------ERİŞİLEN VERİLERİN VERİTABANINA EKLENMESİ---------------#
#----------------------------------------------------------------------#

    def database():
        with open('veriseti.csv', 'r', encoding="utf8") as f:
            reader = csv.reader(f)
            next(reader)
            for lines in reader:
                video_var = conn.execute("select video_id from Video_information where video_id=? ", (lines[0],))
                video = video_var.fetchall()
                if video:
                    print("Kayıt zaten var")
                else:
                    curs.execute("INSERT  Into Video_information \
                                        (video_id,channel_id, publish_date, video_title, video_description, video_duration) \
                                         VALUES(?,?,?,?,?,?)", \
                                 (lines[0], channelId_list[0], lines[1], lines[2], lines[3], lines[9]))
                    conn.commit()
                    date = datetime.datetime.now()
                    curs.execute("INSERT INTO Video_tracking \
                                            (video_id,channel_id,video_views, video_likes, video_dislikes, video_comments, video_access_date) \
                                            VALUES(?,?,?,?,?,?,?)", \
                                 (lines[0], channelId_list[0], lines[4], lines[5], lines[6], lines[8], date))
                    conn.commit()
                    print("İlkse burası çalışmalı")


#-----DAHA ÖNCE TAKİBE ALINAN VERİTABANINDAKİ VERİLERİN KONTROL EDİLMESİ VE TEKRAR KAYDEDİLMESİ-----#
#---------------------------------------------------------------------------------------------------#
    def get_db_video_stats(db, resource):
        # videoID=conn.execute("select video_id from videos where video_id= videoId")
        api_key = "AIzaSyChBjf04ZwwEkulTskkOFh5BBrFbXcyx9Y"
        url = "https://www.googleapis.com/youtube/v3/videos"

        parameters = {
            "part": resource,
            "id": db,
            "key": api_key,
            "maxResults": "50"
        }

        video_stats_resp = requests.get(url, params=parameters)

        return video_stats_resp.json()


    db_videos = conn.execute("select video_id from Video_information where channel_id=? ", (channelId_list[0],))
    db_video = db_videos.fetchall()
    if db_video:
        def get_db_channel_information():
            video_stats = get_db_video_stats(db_video, "statistics")
            video_content_details = get_db_video_stats(db_video, "contentDetails")

            video_views = data_extractor(video_stats, "items", "statistics", "viewCount")
            likes = data_extractor(video_stats, "items", "statistics", "likeCount")
            dislikes = data_extractor(video_stats, "items", "statistics", "dislikeCount")
            favs = data_extractor(video_stats, "items", "statistics", "favoriteCount")
            comments = data_extractor(video_stats, "items", "statistics", "commentCount")
            duration = data_extractor(video_content_details, "items", "contentDetails", "duration")

            print(video_views)
            print(likes)
            print(dislikes)
            print(favs)
            print(comments)
            print(duration)

            lst = zip(video_id, publish_date, title, desc, \
                      video_views, likes, dislikes, \
                      favs, comments, duration)

            video_yt = pd.DataFrame(lst, \
                                      columns=["video_id", "publish_date", "title", "desc",
                                               "video_views", "likes", "dislikes", \
                                               "favs", "comments", "duration"])

            video_yt.to_csv('dbveriseti.csv', index=False)
            with open('dbveriseti.csv', 'r', encoding="utf8") as f:
                reader = csv.reader(f)
                next(reader)
                for lines in reader:
                    date = datetime.datetime.now()
                    curs.execute("INSERT INTO Video_tracking \
                                        (video_id,channel_id,video_views, video_likes, video_dislikes, video_comments, video_access_date) \
                                         VALUES(?,?,?,?,?,?,?)", \
                                 (lines[0], channelId_list[0], lines[4], lines[5], lines[6], lines[8], date))
                    conn.commit()
            print("Burası çalıştı")

        get_db_channel_information()

    else:
        print("Kayıt yok")


#-----------------5 DK DE BİR VİDEO KONTROL-----------------------------#
#-----------------------------------------------------------------------#
    counter = 1
    while counter < 10:
        sayac = 0;
        get_channel_information()
        database()
        time.sleep(300)
        counter += 1

else:
    print("Böyle bir kanal yok")
    print("*******************")













