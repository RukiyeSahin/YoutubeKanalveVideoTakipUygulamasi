BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Channel_information" (
	"channel_id"	TEXT NOT NULL UNIQUE,
	"channel_name"	TEXT NOT NULL,
	"channel_access_date"	TEXT NOT NULL,
	PRIMARY KEY("channel_id")
);
CREATE TABLE IF NOT EXISTS "Video_information" (
	"video_id"	TEXT NOT NULL UNIQUE,
	"channel_id"	TEXT NOT NULL,
	"publish_date"	TEXT NOT NULL,
	"video_title"	TEXT NOT NULL,
	"video_description"	TEXT NOT NULL,
	"video_duration"	TEXT NOT NULL,
	PRIMARY KEY("video_id"),
	FOREIGN KEY("channel_id") REFERENCES "Channel_information"("channel_id")
);
CREATE TABLE IF NOT EXISTS "Video_tracking" (
	"tracking_id"	INTEGER NOT NULL UNIQUE,
	"video_id"	TEXT NOT NULL,
	"channel_id"	TEXT NOT NULL,
	"video_views"	TEXT NOT NULL,
	"video_likes"	INTEGER NOT NULL,
	"video_dislikes"	INTEGER NOT NULL,
	"video_comments"	INTEGER NOT NULL,
	"video_access_date"	TEXT NOT NULL,
	PRIMARY KEY("tracking_id" AUTOINCREMENT),
	FOREIGN KEY("video_id") REFERENCES "Video_information"("video_id"),
	FOREIGN KEY("channel_id") REFERENCES "Channel_information"("channel_id")
);
INSERT INTO "Channel_information" VALUES ('UCJXKKGzjjqnHAEkJsdC7ZKw','Danla Bilic','2021-07-14 23:34:39.115082');
INSERT INTO "Channel_information" VALUES ('UCoyLJa1wvxDqGD5Y2YbLrzg','Mely Nutty','2021-07-14 23:37:43.526642');
INSERT INTO "Channel_information" VALUES ('UCeGUqJFEuNCiECPrHMup3tg','Yoora Jung','2021-07-14 23:51:20.440974');
INSERT INTO "Channel_information" VALUES ('UClCBG771sRO6Ap9s84Je7Eg','Emre Durmuş','2021-07-15 00:02:26.325125');
INSERT INTO "Video_information" VALUES ('Ysutl1X7K4I','UCJXKKGzjjqnHAEkJsdC7ZKw','2021-06-18T15:00:11Z','BELESSSCI TAYFA BURDA MISIN? Ben burdayim sizi bekliyorum','Hediye kazanmak için yapmanız gerekenler; https://gleam.io/MF2ev/hediye-paketi ▻Instagram: https://www.instagram.com/danlabilic/ ▻Twitter: ...','PT20M10S');
INSERT INTO "Video_information" VALUES ('OPpCf7tjCwY','UCJXKKGzjjqnHAEkJsdC7ZKw','2021-06-11T15:00:11Z','2 aydır biriken tüm hediyeler sizin! (bugüne kadar en iyisiydi)','Hediye kazanmak için yapmanız gerekenler; https://gleam.io/MF2ev/hediye-paketi ▻Instagram: https://www.instagram.com/danlabilic/ ▻Twitter: ...','PT26M25S');
INSERT INTO "Video_information" VALUES ('T2jt1ScChGg','UCJXKKGzjjqnHAEkJsdC7ZKw','2021-06-04T15:00:11Z','Ekrani yukari kaydirmaktan biktiniz mi? Surekli link veren BIZLER hakkinda hersey 🤪','Takı: https://ty.gl/btdzw9t8x Kıyafet: https://ty.gl/kdotfrsaz Cilt Bakımı: https://ty.gl/aplhqzjn1 Mutfak: https://ty.gl/h0fdqfbyi Bikini: https://ty.gl/qjgfhjy Dekor: ...','PT19M23S');
INSERT INTO "Video_information" VALUES ('5vx0OPT9F1E','UCJXKKGzjjqnHAEkJsdC7ZKw','2021-05-28T15:00:13Z','Nerdeydim? Miami&#39;de corona seruvenim, sevgilimle nasil tanistim, yeni dev studyo!','Bahsettiğim ürünler; Mobil App linki: https://ty.gl/v9wjviux Web linki: https://ty.gl/pwr15op ▻Instagram: https://www.instagram.com/danlabilic ▻Twitter: ...','PT27M46S');
INSERT INTO "Video_information" VALUES ('HNgJwscatgY','UCJXKKGzjjqnHAEkJsdC7ZKw','2021-03-21T13:00:10Z','Efe ile Soru Kartlarıyla Ruh Eşimizi Arıyoruz! (ben buldum gibi darısı başına 😅 )','Uygulamayı denemek için buraya bakabilirsiniz; https://okcupid.onelink.me/godV/903344b7 ▻ Instagram: https://www.instagram.com/okcupidtr/ ▻Instagram: ...','PT35M33S');
INSERT INTO "Video_information" VALUES ('BE9jpLPb1iw','UCJXKKGzjjqnHAEkJsdC7ZKw','2021-03-12T23:00:07Z','Rockcı Serpil Makyajı','Uygulamayı incelemek isterseniz buradan bakabilirsiniz. https://mrandmsbeauty.com/links/ ▻Instagram: https://www.instagram.com/danlabilic/ ▻Twitter: ...','PT26M47S');
INSERT INTO "Video_information" VALUES ('MII7wPA6GZc','UCJXKKGzjjqnHAEkJsdC7ZKw','2021-01-31T11:00:12Z','MasterChef Emir ile Düğün Pastası Yaptık! (Öyle istedi)','Instagram: https://www.instagram.com/danlabilic/ ▻Twitter: https://twitter.com/danlabilic ▻discord kanalıma katılabilirsiniz: https://discord.gg/7YBRApGX ...','PT39M10S');
INSERT INTO "Video_information" VALUES ('cg0aqMSTyyQ','UCJXKKGzjjqnHAEkJsdC7ZKw','2021-01-23T16:00:10Z','Head&amp;Shoulders reklam cekimi vlog 💙 (Kaç saat sürdü ben inanamadım)','Hello Çok eğlendiğim, çok yorulduğum ve beni çook mutlu eden bu projede yanımda olduğunuz için size ne kadar teşekkür etsem az. Birlikte nice başarılara ...','PT19M38S');
INSERT INTO "Video_information" VALUES ('_fqtJ75hwbM','UCJXKKGzjjqnHAEkJsdC7ZKw','2021-01-08T15:00:11Z','Somer Şef ile imam bayıldı yaptık! (İmam gercekten bayılmış olabilir)','Instagram: https://www.instagram.com/danlabilic/ ▻Twitter: https://twitter.com/danlabilic ▻Kampa gittim vlog (gitmez olaydim) https://youtu.be/719LwscBe1Y ...','PT46M35S');
INSERT INTO "Video_information" VALUES ('6XBOTq7txPM','UCJXKKGzjjqnHAEkJsdC7ZKw','2020-12-31T21:00:05Z','2021 müthiş kalabalık eğlenceli coronalı yeni yıl PARTYSI 🎅♥️','Sizin için hazırladığım linkler; https://ty.gl/8a9bc02 - https://ty.gl/yabienz ▻Instagram: https://www.instagram.com/danlabilic/ ▻Twitter: https://twitter.com/danlabilic ...','PT32M38S');
INSERT INTO "Video_information" VALUES ('xqKD11SaB24','UCoyLJa1wvxDqGD5Y2YbLrzg','2021-07-13T16:02:01Z','EVİMİ KAPATIYORUM! BURSA&#39;DAN TAŞINMA VAKTİ, EV TURU | BİRLİKTE BİR HAFTA #MELYLOG','Bu Video Protein Ocean tarafından sponsorludur. Bahsettiğim Protein Ocean aşağıdaki linkten ulaşabilirsiniz; https://cden.co/melynuttyYT Melynutty indirim kodu ...','PT31M19S');
INSERT INTO "Video_information" VALUES ('rIIo2oQC5rk','UCoyLJa1wvxDqGD5Y2YbLrzg','2021-07-08T15:00:22Z','BU YOLU SEÇMEMİZ HATAYDI! | KAYIP ŞEHİR PETRA&#39;YI BİRLİKTE KEŞFEDELİM!  #JORDAN','Ürdün seyahatimizin sonraki rotası Petra oldu:) Dünyanın 7 harikalarından biri olarak biliniyor. Kızıl, bambaşka bir atmosferi var. Sanki tarihin içinde ...','PT26M26S');
INSERT INTO "Video_information" VALUES ('s_K2C_j15j8','UCoyLJa1wvxDqGD5Y2YbLrzg','2021-07-01T13:00:50Z','BU SUDA BATMAK İMKANSIZ! DÜNYANIN EN ALÇAK NOKTASINDA EN TUZLU SUYA GİRDİK #JORDAN #DEADSEA','Sonunda babamlar da yanımıza geldi! Bu vlog Amman''da başlayıp Petra''ya doğru yol alırken son bulur. Ürdün gezimizde rota olarak; Amman, Dead Sea, Wadi ...','PT21M49S');
INSERT INTO "Video_information" VALUES ('bP2tY4dfy_o','UCoyLJa1wvxDqGD5Y2YbLrzg','2021-06-25T13:59:22Z','HAVAALANINDA BAŞIMIZA GELENLER! TACİZ, UÇAĞA ALMADILAR | ANNEMLE ÜRDÜN&#39;DE BAŞBAŞA İLK GÜNÜMÜZ','İlk defa bir seyahatimiz bu kadar sorunlu oldu. Ailemle yıllar sonra yurtdışı seyahati gerçekleştirdik. Yaşadığımız problemlere rağmen sakinliğimi koruyup devam ...','PT27M48S');
INSERT INTO "Video_information" VALUES ('g3b6E8x-2aA','UCoyLJa1wvxDqGD5Y2YbLrzg','2021-06-11T12:00:26Z','BİR GÜN BOYUNCA KIZ KARDEŞİMİN KÖLESİ OLDUM!!🤭 HAYIR DEMEK YASAK #MELYLOG','Bu video konseptini Azra çok sevdi :D Bir gün boyunca Azra''nın her dediğini yaptım.Klasik küçük kız kardeş olarak Azra beni baya uğraştırdı:) Migros indirimi ...','PT21M18S');
INSERT INTO "Video_information" VALUES ('XkUIDLB1RCw','UCoyLJa1wvxDqGD5Y2YbLrzg','2021-06-08T15:06:55Z','İTİRAF EDİYORUM! BANA KIZMAYIN | SON FİNAL HAFTAM, MEZUNLUK DURUMU, KAYKAY ÖĞRENME ÇABAM #MELYLOG','Zor geçen iki haftayı geride bıraktım. Hala öğrencilik hayatımın biteceğine inanamıyorum :) Sonuçlar tam olarak açıklanmadı, projem onaylanmadı. Sonraki ...','PT24M51S');
INSERT INTO "Video_information" VALUES ('lwsYUUqpU88','UCoyLJa1wvxDqGD5Y2YbLrzg','2021-06-06T15:11:14Z','YENİ BAŞLAYANLAR İÇİN SIFIRDAN, UYGUN FİYATLI KAMP ALIŞVERİŞİ!⛺️ALDIĞIM HER ŞEY SİZE HEDİYE 🥳','Uzun zamandır bir kamp alışverişi yapmak istiyordum, hiçbir malzemem yoktu. Birlikte yapalım istedim! Bu videoda sizlere de güzel hediyelerim var! Umarım ...','PT19M40S');
INSERT INTO "Video_information" VALUES ('q_WYOroTVDk','UCoyLJa1wvxDqGD5Y2YbLrzg','2021-06-04T13:14:54Z','12 KİŞİLİK LÜKS VİLLADA TATİL | KAŞ&#39;IN ALTINI ÜSTÜNE GETİRDİK! SUSHİ YAPTIM | HAFTALIK #MELYLOG #KAŞ','19 senelik öğrencilik hayatımın son bulmasına çok az kaldı. O yüzden bu videoyu çok geç yükleyebildim, lütfen kusura bakmayın. Kaş ve Kalkan''ı birlikte ...','PT45M14S');
INSERT INTO "Video_information" VALUES ('dTNooGnhD3o','UCoyLJa1wvxDqGD5Y2YbLrzg','2021-05-25T13:30:06Z','BAKIN KİM GELDİ?😄 SONUNDA BULUŞTUK! BİRLİKTE İKİ GÜN #MELYLOG','Merhaba arkadaşlar! Bu vlogda Emre bizi ziyaret etti, uzun zamandır takip ettiğimden zaten tanıyormuş gibiydim ve çok güzel vakit geçirdik. Bayramın ilk iki günü ...','PT18M6S');
INSERT INTO "Video_information" VALUES ('pJmc31SvGU4','UCoyLJa1wvxDqGD5Y2YbLrzg','2021-05-16T08:32:58Z','SORULMAYAN ÜRÜNÜ LİNKLEMİŞSİNİZDİR | MESLEĞİNİ YAPMAYACAKSIN | HAKKIMIZDAKİ VARSAYIMLARI OKUDUK!','Hazır evde boş vaktimiz varken hakkımızdaki varsayımları okuyup birlikte sohbet edelim dedik:) Bilinen şeyler de elbet oldu, ama çoğu yanlış tahmin :D Umarım ...','PT28M45S');
INSERT INTO "Video_information" VALUES ('QH3E9NegFFU','UCeGUqJFEuNCiECPrHMup3tg','2021-06-30T21:31:30Z','VLOG: what i&#39;ve been up to, productive days studying for more exams (!!)','Thanks to BetterHelp for sponsoring today''s video! Click here for 10% off your first month - https://betterhelp.com/yoora ♡ SUBTITLE TRANSLATIONS ♡ ○ If ...','PT12M21S');
INSERT INTO "Video_information" VALUES ('clD40Qifbbw','UCeGUqJFEuNCiECPrHMup3tg','2021-06-16T13:00:28Z','I graduated!!','hey yall thank you so much for your support throughout college! i really would not have been able to get through it all without you guys :) I can''t wait to start a new ...','PT10M40S');
INSERT INTO "Video_information" VALUES ('IuQO5-o8-Qo','UCeGUqJFEuNCiECPrHMup3tg','2021-05-28T00:27:36Z','Waking up at 5 am for finals week 😇 college final exams','Thanks to Grammarly for sponsoring a portion of this video! Grammarly is a must-have in your life! Make sure to sign up for a free account with my link: ...','PT16M21S');
INSERT INTO "Video_information" VALUES ('3xfFNMLS5-w','UCeGUqJFEuNCiECPrHMup3tg','2021-05-23T12:55:01Z','forcing a GLOW UP before SUMMER ✨ new hair, BTS DNA tattoo ft. Inkbox','BTS | Inkbox tattoos: http://bit.ly/InkboxYooraJung ♡ SUBTITLE TRANSLATIONS ♡ ○ If you are fluent in another language, please contribute translations here: ...','PT10M38S');
INSERT INTO "Video_information" VALUES ('KWylYxymzH0','UCeGUqJFEuNCiECPrHMup3tg','2021-04-30T12:00:18Z','Trying Blackpink Jennie&#39;s Diet 🥑 my first kpop performance','hey everyone! I''m super proud of myself for not taking a full month to edit and upload this LOL thanks for always being there for me and leaving supportive ...','PT14M7S');
INSERT INTO "Video_information" VALUES ('59J7INAjmM0','UCeGUqJFEuNCiECPrHMup3tg','2021-04-21T13:30:54Z','✧ *:･ﾟmy morning &amp; night routines *:･ﾟ✧ (on a good day)','Get 20% off your first #NEIWAI order with code Yoora: https://neiwai.us/YooraJung Learn more about NEIWAI''s #BarelyZero #YourSizeIsTheSize line: ...','PT12M16S');
INSERT INTO "Video_information" VALUES ('uaLOOVwAOOI','UCeGUqJFEuNCiECPrHMup3tg','2021-03-29T12:59:38Z','VLOG: midterms, my birthday, kpop dance practice','Sign up for Notion here: http://bit.ly/yooranotion kdrama template from reddit: ...','PT13M40S');
INSERT INTO "Video_information" VALUES ('Q25pn8BehKs','UCeGUqJFEuNCiECPrHMup3tg','2021-03-18T11:47:33Z','a busy week at college (ㆆ_ㆆ) 2nd semester senior','hey guys! i am finally back with another vlog :) hopefully you guys are taking care of yourselves! sending love and positive energy your way~ xoxo ♡ SUBTITLE ...','PT11M25S');
INSERT INTO "Video_information" VALUES ('j7drmf2MdBM','UCeGUqJFEuNCiECPrHMup3tg','2021-03-01T13:56:01Z','my college apartment ♡ 400 sq ft studio tour','hi, everyone! this video was highly requested, so i decided to film a tour of my crib hehe i hope you enjoy! love you xoxo ♡ SUBTITLE TRANSLATIONS ♡ ○ If ...','PT9M32S');
INSERT INTO "Video_information" VALUES ('Dbt3dNOmt4Y','UCeGUqJFEuNCiECPrHMup3tg','2021-02-18T13:40:09Z','realistic college vlog: new classes, a fashion haul, and lots of food 🥘','Shop the looks at https://us.princesspolly.com/ and use my code YOORA for 20% off site wide (code valid until 3/18) ○ If you are fluent in another language, ...','PT14M55S');
INSERT INTO "Video_information" VALUES ('AuOURWjowm8','UClCBG771sRO6Ap9s84Je7Eg','2021-06-28T16:41:51Z','KARAVAN’da 24 saat geçirdik! - Muğla, Köyceğiz','Merhaba, ben Emre Durmuş. Bugün İzem ile beraber Muğla''da karavan kiralayıp orman genel müdürlüğünün yeni açtığı ekolojik rotalardan birisi olan Muğla ...','PT21M50S');
INSERT INTO "Video_information" VALUES ('kHL5NonHn1o','UClCBG771sRO6Ap9s84Je7Eg','2021-06-14T06:59:46Z','2500 km yol yaptım işte başıma gelenler (ayağım kırıldı)','Selamlar ben Emre Durmuş. Bu kadar yolculuktan sonra üzücü bir sonla videoyu bitiriyorum maalesef. İstanbul''dan Yolcu360 ile başlayan macera Gebze, İzmit, ...','PT26M7S');
INSERT INTO "Video_information" VALUES ('ihNVsSgm1eU','UClCBG771sRO6Ap9s84Je7Eg','2021-06-06T09:54:54Z','İstanbul&#39;da Bu 3 Katlı Evi Tuttum! - Yeni Ofis Turu ve Hediye Paket Açılışı','Selam herkese!! Ben Emre Durmuş. Uzun zamandan sonra Yeni Ofis Turu ve Hediye Paket Açılışıı videosu ile karşınızdayım. Hem bu ofis için destek olanlar ...','PT20M21S');
INSERT INTO "Video_information" VALUES ('v-qFMPbGevY','UClCBG771sRO6Ap9s84Je7Eg','2021-05-07T13:53:44Z','Adada @Chaby Han ile Bir Gün Geçirdik - Büyükada İstanbul','Merhaba, ben Emre Durmuş. Bugün @Chaby Han ile beraber hazır İstanbul''da baharda gelmişken yapılacak en güzel şeylerden birisi ne olabilir diye düşündük ...','PT18M13S');
INSERT INTO "Video_information" VALUES ('48YqUfAaFy0','UClCBG771sRO6Ap9s84Je7Eg','2021-04-30T14:52:08Z','Elmas BUZ Mağarasına Girdim! (Bu benim hayalimdi) - İZLANDA','Ben Emre Durmuş, İzlanda''da dünyanın En Büyük Kristal BUZ Mağarasına gittiğim videoyu sizinle paylaşıyorum. Bu deneyim aynı zamanda benim en çok ...','PT19M50S');
INSERT INTO "Video_information" VALUES ('_eQa4q0yrw8','UClCBG771sRO6Ap9s84Je7Eg','2021-04-13T15:25:22Z','İzlanda&#39;daki EVİM - Ahşap Tiny House Oda Turu','Ben Emre Durmuş, İzlanda seyahatimde tabikii de bu tatlı tiny house cabin evlerinde de kalmadan edemezdim. Yaptığım yolculuk boyunca dinlendiğim ve ...','PT10M22S');
INSERT INTO "Video_information" VALUES ('V5BUnmK12bw','UClCBG771sRO6Ap9s84Je7Eg','2021-04-09T13:18:01Z','İşte o terk edilmiş düşen UÇAK! - İç çamaşırları ne alaka?','Ben Emre Durmuş, bugün “iZLANDA ünlü düşen terkedilmiş uçak videosu ile karşınızdayım. İzlanda''da da road trip yaptığım yolculuk boyunca bir kaç farklı ...','PT13M34S');
INSERT INTO "Video_information" VALUES ('BRptcYJlZzE','UClCBG771sRO6Ap9s84Je7Eg','2021-04-02T13:00:02Z','İZLANDA Macerası şimdi başlıyor! - Kaldığım Ev, Road Trip ve Gayzerler','Ben Emre Durmuş, bugün “iZLANDA''da road trip yaptığım Gayzerlerin İzlanda''nın evlerinin olduğu ve bir domates çorbasına 20 euro verdiğim vlog ile ...','PT20M10S');
INSERT INTO "Video_information" VALUES ('IIdMED86C8k','UClCBG771sRO6Ap9s84Je7Eg','2021-03-26T13:54:36Z','İZLANDA&#39;da ilk Günüm! - Fiyatlar, Sokaklar ve Yaşam','Ben Emre Durmuş, bugün “iZLANDA''da ilk Günüm! - izlanda sokakları genel bilgiler ve Yaşam ve Lave tünel deneyimi" videosuyla karşınızdayım. İzlanda ...','PT19M32S');
INSERT INTO "Video_information" VALUES ('LIKJinGscJI','UClCBG771sRO6Ap9s84Je7Eg','2021-03-20T15:06:25Z','BU TAM BİR ÇILGINLIK! -  İzlanda&#39;ya Geldim','Herkese merhaba! Ben Emre Durmuş, BU TAM BİR ÇILGINLIK! - İzlanda''ya Geldim! videosu ile karşınızdayım. İzlanda Blue Lagoon adı verilen mavi lagünleri, ...','PT18M28S');
INSERT INTO "Video_information" VALUES ('FPnqeFl_FGU','UCJXKKGzjjqnHAEkJsdC7ZKw','2020-12-25T15:00:03Z','MasterChef Furkan&#39;a browni yapmayı öğrettim! (Öğretemedim)','Instagram: https://www.instagram.com/danlabilic/ ▻Twitter: https://twitter.com/danlabilic Furkan''ın kanalı: ...','PT44M35S');
INSERT INTO "Video_tracking" VALUES (1,'Ysutl1X7K4I','UCJXKKGzjjqnHAEkJsdC7ZKw','722451',43408,2065,2740,'2021-07-14 23:34:40.658488');
INSERT INTO "Video_tracking" VALUES (2,'OPpCf7tjCwY','UCJXKKGzjjqnHAEkJsdC7ZKw','1302028',75094,5854,7776,'2021-07-14 23:34:40.678914');
INSERT INTO "Video_tracking" VALUES (3,'T2jt1ScChGg','UCJXKKGzjjqnHAEkJsdC7ZKw','1241248',65250,10275,4619,'2021-07-14 23:34:40.692251');
INSERT INTO "Video_tracking" VALUES (4,'5vx0OPT9F1E','UCJXKKGzjjqnHAEkJsdC7ZKw','2113780',79578,14292,4779,'2021-07-14 23:34:40.704550');
INSERT INTO "Video_tracking" VALUES (5,'HNgJwscatgY','UCJXKKGzjjqnHAEkJsdC7ZKw','866835',30039,2239,1942,'2021-07-14 23:34:40.717558');
INSERT INTO "Video_tracking" VALUES (6,'BE9jpLPb1iw','UCJXKKGzjjqnHAEkJsdC7ZKw','763330',37514,4554,3683,'2021-07-14 23:34:40.730642');
INSERT INTO "Video_tracking" VALUES (7,'MII7wPA6GZc','UCJXKKGzjjqnHAEkJsdC7ZKw','1359259',53822,4113,3493,'2021-07-14 23:34:40.742941');
INSERT INTO "Video_tracking" VALUES (8,'cg0aqMSTyyQ','UCJXKKGzjjqnHAEkJsdC7ZKw','1047202',43292,3915,2285,'2021-07-14 23:34:40.755509');
INSERT INTO "Video_tracking" VALUES (9,'_fqtJ75hwbM','UCJXKKGzjjqnHAEkJsdC7ZKw','1302635',44962,1955,3132,'2021-07-14 23:34:40.773024');
INSERT INTO "Video_tracking" VALUES (10,'6XBOTq7txPM','UCJXKKGzjjqnHAEkJsdC7ZKw','1176214',40554,7205,2551,'2021-07-14 23:34:40.786034');
INSERT INTO "Video_tracking" VALUES (11,'Ysutl1X7K4I','UCJXKKGzjjqnHAEkJsdC7ZKw','722451',43408,2065,2740,'2021-07-14 23:34:56.401069');
INSERT INTO "Video_tracking" VALUES (12,'OPpCf7tjCwY','UCJXKKGzjjqnHAEkJsdC7ZKw','1302028',75094,5854,7776,'2021-07-14 23:34:56.411112');
INSERT INTO "Video_tracking" VALUES (13,'T2jt1ScChGg','UCJXKKGzjjqnHAEkJsdC7ZKw','1241248',65250,10275,4619,'2021-07-14 23:34:56.417326');
INSERT INTO "Video_tracking" VALUES (14,'5vx0OPT9F1E','UCJXKKGzjjqnHAEkJsdC7ZKw','2113780',79578,14292,4779,'2021-07-14 23:34:56.424856');
INSERT INTO "Video_tracking" VALUES (15,'HNgJwscatgY','UCJXKKGzjjqnHAEkJsdC7ZKw','866836',30039,2239,1942,'2021-07-14 23:34:56.431883');
INSERT INTO "Video_tracking" VALUES (16,'BE9jpLPb1iw','UCJXKKGzjjqnHAEkJsdC7ZKw','763330',37514,4554,3683,'2021-07-14 23:34:56.438011');
INSERT INTO "Video_tracking" VALUES (17,'MII7wPA6GZc','UCJXKKGzjjqnHAEkJsdC7ZKw','1359259',53822,4113,3493,'2021-07-14 23:34:56.444005');
INSERT INTO "Video_tracking" VALUES (18,'cg0aqMSTyyQ','UCJXKKGzjjqnHAEkJsdC7ZKw','1047202',43292,3915,2285,'2021-07-14 23:34:56.450014');
INSERT INTO "Video_tracking" VALUES (19,'_fqtJ75hwbM','UCJXKKGzjjqnHAEkJsdC7ZKw','1302635',44962,1955,3132,'2021-07-14 23:34:56.456850');
INSERT INTO "Video_tracking" VALUES (20,'6XBOTq7txPM','UCJXKKGzjjqnHAEkJsdC7ZKw','1176214',40554,7205,2551,'2021-07-14 23:34:56.462850');
INSERT INTO "Video_tracking" VALUES (21,'Ysutl1X7K4I','UCJXKKGzjjqnHAEkJsdC7ZKw','722451',43408,2065,2740,'2021-07-14 23:34:57.546396');
INSERT INTO "Video_tracking" VALUES (22,'OPpCf7tjCwY','UCJXKKGzjjqnHAEkJsdC7ZKw','1302028',75094,5854,7776,'2021-07-14 23:34:57.556384');
INSERT INTO "Video_tracking" VALUES (23,'T2jt1ScChGg','UCJXKKGzjjqnHAEkJsdC7ZKw','1241248',65250,10275,4619,'2021-07-14 23:34:57.562499');
INSERT INTO "Video_tracking" VALUES (24,'5vx0OPT9F1E','UCJXKKGzjjqnHAEkJsdC7ZKw','2113780',79578,14292,4779,'2021-07-14 23:34:57.569497');
INSERT INTO "Video_tracking" VALUES (25,'HNgJwscatgY','UCJXKKGzjjqnHAEkJsdC7ZKw','866836',30039,2239,1942,'2021-07-14 23:34:57.576789');
INSERT INTO "Video_tracking" VALUES (26,'BE9jpLPb1iw','UCJXKKGzjjqnHAEkJsdC7ZKw','763330',37514,4554,3683,'2021-07-14 23:34:57.583608');
INSERT INTO "Video_tracking" VALUES (27,'MII7wPA6GZc','UCJXKKGzjjqnHAEkJsdC7ZKw','1359259',53822,4113,3493,'2021-07-14 23:34:57.589608');
INSERT INTO "Video_tracking" VALUES (28,'cg0aqMSTyyQ','UCJXKKGzjjqnHAEkJsdC7ZKw','1047202',43292,3915,2285,'2021-07-14 23:34:57.595483');
INSERT INTO "Video_tracking" VALUES (29,'_fqtJ75hwbM','UCJXKKGzjjqnHAEkJsdC7ZKw','1302635',44962,1955,3132,'2021-07-14 23:34:57.601573');
INSERT INTO "Video_tracking" VALUES (30,'6XBOTq7txPM','UCJXKKGzjjqnHAEkJsdC7ZKw','1176214',40554,7205,2551,'2021-07-14 23:34:57.607572');
INSERT INTO "Video_tracking" VALUES (31,'Ysutl1X7K4I','UCJXKKGzjjqnHAEkJsdC7ZKw','722466',43408,2065,2740,'2021-07-14 23:37:11.660692');
INSERT INTO "Video_tracking" VALUES (32,'OPpCf7tjCwY','UCJXKKGzjjqnHAEkJsdC7ZKw','1302028',75094,5855,7776,'2021-07-14 23:37:11.677250');
INSERT INTO "Video_tracking" VALUES (33,'T2jt1ScChGg','UCJXKKGzjjqnHAEkJsdC7ZKw','1241248',65250,10275,4619,'2021-07-14 23:37:11.684461');
INSERT INTO "Video_tracking" VALUES (34,'5vx0OPT9F1E','UCJXKKGzjjqnHAEkJsdC7ZKw','2113780',79578,14292,4779,'2021-07-14 23:37:11.691457');
INSERT INTO "Video_tracking" VALUES (35,'HNgJwscatgY','UCJXKKGzjjqnHAEkJsdC7ZKw','866836',30039,2239,1942,'2021-07-14 23:37:11.698944');
INSERT INTO "Video_tracking" VALUES (36,'BE9jpLPb1iw','UCJXKKGzjjqnHAEkJsdC7ZKw','763333',37514,4554,3683,'2021-07-14 23:37:11.704944');
INSERT INTO "Video_tracking" VALUES (37,'MII7wPA6GZc','UCJXKKGzjjqnHAEkJsdC7ZKw','1359259',53822,4113,3493,'2021-07-14 23:37:11.711943');
INSERT INTO "Video_tracking" VALUES (38,'cg0aqMSTyyQ','UCJXKKGzjjqnHAEkJsdC7ZKw','1047202',43292,3915,2285,'2021-07-14 23:37:11.718417');
INSERT INTO "Video_tracking" VALUES (39,'_fqtJ75hwbM','UCJXKKGzjjqnHAEkJsdC7ZKw','1302635',44962,1955,3132,'2021-07-14 23:37:11.724419');
INSERT INTO "Video_tracking" VALUES (40,'6XBOTq7txPM','UCJXKKGzjjqnHAEkJsdC7ZKw','1176215',40554,7205,2551,'2021-07-14 23:37:11.731694');
INSERT INTO "Video_tracking" VALUES (41,'xqKD11SaB24','UCoyLJa1wvxDqGD5Y2YbLrzg','136157',6541,186,592,'2021-07-14 23:37:45.244746');
INSERT INTO "Video_tracking" VALUES (42,'rIIo2oQC5rk','UCoyLJa1wvxDqGD5Y2YbLrzg','107236',4488,128,338,'2021-07-14 23:37:45.257879');
INSERT INTO "Video_tracking" VALUES (43,'s_K2C_j15j8','UCoyLJa1wvxDqGD5Y2YbLrzg','199937',7161,241,514,'2021-07-14 23:37:45.272401');
INSERT INTO "Video_tracking" VALUES (44,'bP2tY4dfy_o','UCoyLJa1wvxDqGD5Y2YbLrzg','248583',7995,267,609,'2021-07-14 23:37:45.286978');
INSERT INTO "Video_tracking" VALUES (45,'g3b6E8x-2aA','UCoyLJa1wvxDqGD5Y2YbLrzg','189914',7968,389,621,'2021-07-14 23:37:45.308375');
INSERT INTO "Video_tracking" VALUES (46,'XkUIDLB1RCw','UCoyLJa1wvxDqGD5Y2YbLrzg','198912',7685,294,968,'2021-07-14 23:37:45.323705');
INSERT INTO "Video_tracking" VALUES (47,'lwsYUUqpU88','UCoyLJa1wvxDqGD5Y2YbLrzg','122427',8236,170,18492,'2021-07-14 23:37:45.337622');
INSERT INTO "Video_tracking" VALUES (48,'q_WYOroTVDk','UCoyLJa1wvxDqGD5Y2YbLrzg','224341',7660,407,667,'2021-07-14 23:37:45.356247');
INSERT INTO "Video_tracking" VALUES (49,'dTNooGnhD3o','UCoyLJa1wvxDqGD5Y2YbLrzg','159626',6031,293,450,'2021-07-14 23:37:45.372101');
INSERT INTO "Video_tracking" VALUES (50,'pJmc31SvGU4','UCoyLJa1wvxDqGD5Y2YbLrzg','200623',7222,470,740,'2021-07-14 23:37:45.387070');
INSERT INTO "Video_tracking" VALUES (51,'xqKD11SaB24','UCoyLJa1wvxDqGD5Y2YbLrzg','136585',6552,186,592,'2021-07-14 23:48:39.529126');
INSERT INTO "Video_tracking" VALUES (52,'rIIo2oQC5rk','UCoyLJa1wvxDqGD5Y2YbLrzg','107248',4489,128,339,'2021-07-14 23:48:39.540135');
INSERT INTO "Video_tracking" VALUES (53,'s_K2C_j15j8','UCoyLJa1wvxDqGD5Y2YbLrzg','199951',7161,241,514,'2021-07-14 23:48:39.547019');
INSERT INTO "Video_tracking" VALUES (54,'bP2tY4dfy_o','UCoyLJa1wvxDqGD5Y2YbLrzg','248601',7995,267,609,'2021-07-14 23:48:39.554032');
INSERT INTO "Video_tracking" VALUES (55,'g3b6E8x-2aA','UCoyLJa1wvxDqGD5Y2YbLrzg','189918',7968,389,621,'2021-07-14 23:48:39.561562');
INSERT INTO "Video_tracking" VALUES (56,'XkUIDLB1RCw','UCoyLJa1wvxDqGD5Y2YbLrzg','198914',7685,294,968,'2021-07-14 23:48:39.568571');
INSERT INTO "Video_tracking" VALUES (57,'lwsYUUqpU88','UCoyLJa1wvxDqGD5Y2YbLrzg','122427',8236,170,18492,'2021-07-14 23:48:39.576379');
INSERT INTO "Video_tracking" VALUES (58,'q_WYOroTVDk','UCoyLJa1wvxDqGD5Y2YbLrzg','224350',7660,407,667,'2021-07-14 23:48:39.583389');
INSERT INTO "Video_tracking" VALUES (59,'dTNooGnhD3o','UCoyLJa1wvxDqGD5Y2YbLrzg','159629',6031,293,450,'2021-07-14 23:48:39.591388');
INSERT INTO "Video_tracking" VALUES (60,'pJmc31SvGU4','UCoyLJa1wvxDqGD5Y2YbLrzg','200627',7222,470,740,'2021-07-14 23:48:39.598618');
INSERT INTO "Video_tracking" VALUES (61,'xqKD11SaB24','UCoyLJa1wvxDqGD5Y2YbLrzg','136585',6552,186,592,'2021-07-14 23:49:41.460945');
INSERT INTO "Video_tracking" VALUES (62,'rIIo2oQC5rk','UCoyLJa1wvxDqGD5Y2YbLrzg','107262',4489,128,339,'2021-07-14 23:49:41.474341');
INSERT INTO "Video_tracking" VALUES (63,'s_K2C_j15j8','UCoyLJa1wvxDqGD5Y2YbLrzg','199951',7161,241,514,'2021-07-14 23:49:41.482343');
INSERT INTO "Video_tracking" VALUES (64,'bP2tY4dfy_o','UCoyLJa1wvxDqGD5Y2YbLrzg','248601',7995,267,609,'2021-07-14 23:49:41.496005');
INSERT INTO "Video_tracking" VALUES (65,'g3b6E8x-2aA','UCoyLJa1wvxDqGD5Y2YbLrzg','189918',7968,389,621,'2021-07-14 23:49:41.503982');
INSERT INTO "Video_tracking" VALUES (66,'XkUIDLB1RCw','UCoyLJa1wvxDqGD5Y2YbLrzg','198914',7685,294,968,'2021-07-14 23:49:41.511454');
INSERT INTO "Video_tracking" VALUES (67,'lwsYUUqpU88','UCoyLJa1wvxDqGD5Y2YbLrzg','122427',8236,170,18492,'2021-07-14 23:49:41.518443');
INSERT INTO "Video_tracking" VALUES (68,'q_WYOroTVDk','UCoyLJa1wvxDqGD5Y2YbLrzg','224350',7660,407,667,'2021-07-14 23:49:41.525566');
INSERT INTO "Video_tracking" VALUES (69,'dTNooGnhD3o','UCoyLJa1wvxDqGD5Y2YbLrzg','159629',6031,293,450,'2021-07-14 23:49:41.539033');
INSERT INTO "Video_tracking" VALUES (70,'pJmc31SvGU4','UCoyLJa1wvxDqGD5Y2YbLrzg','200627',7222,470,740,'2021-07-14 23:49:41.551114');
INSERT INTO "Video_tracking" VALUES (71,'QH3E9NegFFU','UCeGUqJFEuNCiECPrHMup3tg','618491',49013,155,1776,'2021-07-14 23:51:21.506360');
INSERT INTO "Video_tracking" VALUES (72,'clD40Qifbbw','UCeGUqJFEuNCiECPrHMup3tg','589850',69873,163,6136,'2021-07-14 23:51:21.526822');
INSERT INTO "Video_tracking" VALUES (73,'IuQO5-o8-Qo','UCeGUqJFEuNCiECPrHMup3tg','862290',60028,171,2254,'2021-07-14 23:51:21.545403');
INSERT INTO "Video_tracking" VALUES (74,'3xfFNMLS5-w','UCeGUqJFEuNCiECPrHMup3tg','651153',58766,232,2641,'2021-07-14 23:51:21.563939');
INSERT INTO "Video_tracking" VALUES (75,'KWylYxymzH0','UCeGUqJFEuNCiECPrHMup3tg','1011873',70871,381,2416,'2021-07-14 23:51:21.579210');
INSERT INTO "Video_tracking" VALUES (76,'59J7INAjmM0','UCeGUqJFEuNCiECPrHMup3tg','975856',71165,351,2708,'2021-07-14 23:51:21.593655');
INSERT INTO "Video_tracking" VALUES (77,'uaLOOVwAOOI','UCeGUqJFEuNCiECPrHMup3tg','696094',54790,141,3001,'2021-07-14 23:51:21.612689');
INSERT INTO "Video_tracking" VALUES (78,'Q25pn8BehKs','UCeGUqJFEuNCiECPrHMup3tg','740576',55367,183,3002,'2021-07-14 23:51:21.629313');
INSERT INTO "Video_tracking" VALUES (79,'j7drmf2MdBM','UCeGUqJFEuNCiECPrHMup3tg','597897',51109,199,2556,'2021-07-14 23:51:21.646222');
INSERT INTO "Video_tracking" VALUES (80,'Dbt3dNOmt4Y','UCeGUqJFEuNCiECPrHMup3tg','828790',60007,188,2706,'2021-07-14 23:51:21.664346');
INSERT INTO "Video_tracking" VALUES (81,'xqKD11SaB24','UCoyLJa1wvxDqGD5Y2YbLrzg','136869',6559,186,593,'2021-07-14 23:52:58.731088');
INSERT INTO "Video_tracking" VALUES (82,'rIIo2oQC5rk','UCoyLJa1wvxDqGD5Y2YbLrzg','107262',4489,128,339,'2021-07-14 23:52:58.739087');
INSERT INTO "Video_tracking" VALUES (83,'s_K2C_j15j8','UCoyLJa1wvxDqGD5Y2YbLrzg','199962',7162,241,514,'2021-07-14 23:52:58.753089');
INSERT INTO "Video_tracking" VALUES (84,'bP2tY4dfy_o','UCoyLJa1wvxDqGD5Y2YbLrzg','248607',7995,267,609,'2021-07-14 23:52:58.759089');
INSERT INTO "Video_tracking" VALUES (85,'g3b6E8x-2aA','UCoyLJa1wvxDqGD5Y2YbLrzg','189919',7968,389,621,'2021-07-14 23:52:58.767089');
INSERT INTO "Video_tracking" VALUES (86,'XkUIDLB1RCw','UCoyLJa1wvxDqGD5Y2YbLrzg','198915',7685,294,968,'2021-07-14 23:52:58.773087');
INSERT INTO "Video_tracking" VALUES (87,'lwsYUUqpU88','UCoyLJa1wvxDqGD5Y2YbLrzg','122428',8236,170,18492,'2021-07-14 23:52:58.781089');
INSERT INTO "Video_tracking" VALUES (88,'q_WYOroTVDk','UCoyLJa1wvxDqGD5Y2YbLrzg','224350',7660,407,667,'2021-07-14 23:52:58.795089');
INSERT INTO "Video_tracking" VALUES (89,'dTNooGnhD3o','UCoyLJa1wvxDqGD5Y2YbLrzg','159631',6031,293,450,'2021-07-14 23:52:58.802089');
INSERT INTO "Video_tracking" VALUES (90,'pJmc31SvGU4','UCoyLJa1wvxDqGD5Y2YbLrzg','200627',7222,470,740,'2021-07-14 23:52:58.809088');
INSERT INTO "Video_tracking" VALUES (91,'xqKD11SaB24','UCoyLJa1wvxDqGD5Y2YbLrzg','137213',6576,186,594,'2021-07-15 00:01:37.437261');
INSERT INTO "Video_tracking" VALUES (92,'rIIo2oQC5rk','UCoyLJa1wvxDqGD5Y2YbLrzg','107276',4490,128,339,'2021-07-15 00:01:37.447818');
INSERT INTO "Video_tracking" VALUES (93,'s_K2C_j15j8','UCoyLJa1wvxDqGD5Y2YbLrzg','199969',7162,241,514,'2021-07-15 00:01:37.456746');
INSERT INTO "Video_tracking" VALUES (94,'bP2tY4dfy_o','UCoyLJa1wvxDqGD5Y2YbLrzg','248609',7995,267,608,'2021-07-15 00:01:37.468179');
INSERT INTO "Video_tracking" VALUES (95,'g3b6E8x-2aA','UCoyLJa1wvxDqGD5Y2YbLrzg','189919',7968,389,621,'2021-07-15 00:01:37.489301');
INSERT INTO "Video_tracking" VALUES (96,'XkUIDLB1RCw','UCoyLJa1wvxDqGD5Y2YbLrzg','198917',7685,294,968,'2021-07-15 00:01:37.497940');
INSERT INTO "Video_tracking" VALUES (97,'lwsYUUqpU88','UCoyLJa1wvxDqGD5Y2YbLrzg','122429',8236,170,18492,'2021-07-15 00:01:37.505955');
INSERT INTO "Video_tracking" VALUES (98,'q_WYOroTVDk','UCoyLJa1wvxDqGD5Y2YbLrzg','224356',7660,407,667,'2021-07-15 00:01:37.514971');
INSERT INTO "Video_tracking" VALUES (99,'dTNooGnhD3o','UCoyLJa1wvxDqGD5Y2YbLrzg','159631',6031,293,450,'2021-07-15 00:01:37.522972');
INSERT INTO "Video_tracking" VALUES (100,'pJmc31SvGU4','UCoyLJa1wvxDqGD5Y2YbLrzg','200630',7222,470,740,'2021-07-15 00:01:37.531292');
INSERT INTO "Video_tracking" VALUES (101,'AuOURWjowm8','UClCBG771sRO6Ap9s84Je7Eg','435383',14434,2633,816,'2021-07-15 00:02:29.738930');
INSERT INTO "Video_tracking" VALUES (102,'kHL5NonHn1o','UClCBG771sRO6Ap9s84Je7Eg','227232',10325,416,868,'2021-07-15 00:02:29.757914');
INSERT INTO "Video_tracking" VALUES (103,'ihNVsSgm1eU','UClCBG771sRO6Ap9s84Je7Eg','242964',12217,456,1055,'2021-07-15 00:02:29.778047');
INSERT INTO "Video_tracking" VALUES (104,'v-qFMPbGevY','UClCBG771sRO6Ap9s84Je7Eg','362438',16521,459,954,'2021-07-15 00:02:29.800710');
INSERT INTO "Video_tracking" VALUES (105,'48YqUfAaFy0','UClCBG771sRO6Ap9s84Je7Eg','400673',20514,343,1202,'2021-07-15 00:02:29.816625');
INSERT INTO "Video_tracking" VALUES (106,'_eQa4q0yrw8','UClCBG771sRO6Ap9s84Je7Eg','385748',23066,428,1609,'2021-07-15 00:02:29.835481');
INSERT INTO "Video_tracking" VALUES (107,'V5BUnmK12bw','UClCBG771sRO6Ap9s84Je7Eg','543692',31540,474,1908,'2021-07-15 00:02:29.854510');
INSERT INTO "Video_tracking" VALUES (108,'BRptcYJlZzE','UClCBG771sRO6Ap9s84Je7Eg','870633',40662,565,5240,'2021-07-15 00:02:29.873898');
INSERT INTO "Video_tracking" VALUES (109,'IIdMED86C8k','UClCBG771sRO6Ap9s84Je7Eg','1249018',78050,1465,3905,'2021-07-15 00:02:29.893213');
INSERT INTO "Video_tracking" VALUES (110,'AuOURWjowm8','UClCBG771sRO6Ap9s84Je7Eg','435416',14435,2633,816,'2021-07-15 00:10:21.875059');
INSERT INTO "Video_tracking" VALUES (111,'kHL5NonHn1o','UClCBG771sRO6Ap9s84Je7Eg','227237',10325,416,868,'2021-07-15 00:10:21.885178');
INSERT INTO "Video_tracking" VALUES (112,'ihNVsSgm1eU','UClCBG771sRO6Ap9s84Je7Eg','242965',12217,456,1055,'2021-07-15 00:10:21.893384');
INSERT INTO "Video_tracking" VALUES (113,'v-qFMPbGevY','UClCBG771sRO6Ap9s84Je7Eg','362439',16521,459,954,'2021-07-15 00:10:21.908070');
INSERT INTO "Video_tracking" VALUES (114,'48YqUfAaFy0','UClCBG771sRO6Ap9s84Je7Eg','400673',20514,343,1202,'2021-07-15 00:10:21.916483');
INSERT INTO "Video_tracking" VALUES (115,'_eQa4q0yrw8','UClCBG771sRO6Ap9s84Je7Eg','385748',23066,428,1609,'2021-07-15 00:10:21.925463');
INSERT INTO "Video_tracking" VALUES (116,'V5BUnmK12bw','UClCBG771sRO6Ap9s84Je7Eg','543693',31540,474,1908,'2021-07-15 00:10:21.933054');
INSERT INTO "Video_tracking" VALUES (117,'BRptcYJlZzE','UClCBG771sRO6Ap9s84Je7Eg','870633',40662,565,5240,'2021-07-15 00:10:21.947515');
INSERT INTO "Video_tracking" VALUES (118,'AuOURWjowm8','UClCBG771sRO6Ap9s84Je7Eg','437055',14449,2642,819,'2021-07-15 11:47:54.140145');
INSERT INTO "Video_tracking" VALUES (119,'kHL5NonHn1o','UClCBG771sRO6Ap9s84Je7Eg','227448',10326,418,867,'2021-07-15 11:47:54.148144');
INSERT INTO "Video_tracking" VALUES (120,'ihNVsSgm1eU','UClCBG771sRO6Ap9s84Je7Eg','243075',12218,457,1055,'2021-07-15 11:47:54.162163');
INSERT INTO "Video_tracking" VALUES (121,'v-qFMPbGevY','UClCBG771sRO6Ap9s84Je7Eg','362517',16523,460,955,'2021-07-15 11:47:54.170172');
INSERT INTO "Video_tracking" VALUES (122,'48YqUfAaFy0','UClCBG771sRO6Ap9s84Je7Eg','400747',20517,343,1202,'2021-07-15 11:47:54.177153');
INSERT INTO "Video_tracking" VALUES (123,'_eQa4q0yrw8','UClCBG771sRO6Ap9s84Je7Eg','385784',23062,428,1601,'2021-07-15 11:47:54.185167');
INSERT INTO "Video_tracking" VALUES (124,'V5BUnmK12bw','UClCBG771sRO6Ap9s84Je7Eg','543754',31540,474,1908,'2021-07-15 11:47:54.193163');
INSERT INTO "Video_tracking" VALUES (125,'BRptcYJlZzE','UClCBG771sRO6Ap9s84Je7Eg','870726',40661,565,5240,'2021-07-15 11:47:54.201144');
INSERT INTO "Video_tracking" VALUES (126,'AuOURWjowm8','UClCBG771sRO6Ap9s84Je7Eg','437258',14454,2642,819,'2021-07-15 12:33:04.579557');
INSERT INTO "Video_tracking" VALUES (127,'kHL5NonHn1o','UClCBG771sRO6Ap9s84Je7Eg','227464',10327,418,867,'2021-07-15 12:33:04.589865');
INSERT INTO "Video_tracking" VALUES (128,'ihNVsSgm1eU','UClCBG771sRO6Ap9s84Je7Eg','243086',12218,457,1055,'2021-07-15 12:33:04.599532');
INSERT INTO "Video_tracking" VALUES (129,'v-qFMPbGevY','UClCBG771sRO6Ap9s84Je7Eg','362526',16524,460,955,'2021-07-15 12:33:04.610335');
INSERT INTO "Video_tracking" VALUES (130,'48YqUfAaFy0','UClCBG771sRO6Ap9s84Je7Eg','400758',20517,343,1202,'2021-07-15 12:33:04.619335');
INSERT INTO "Video_tracking" VALUES (131,'_eQa4q0yrw8','UClCBG771sRO6Ap9s84Je7Eg','385788',23062,428,1601,'2021-07-15 12:33:04.631100');
INSERT INTO "Video_tracking" VALUES (132,'V5BUnmK12bw','UClCBG771sRO6Ap9s84Je7Eg','543756',31540,474,1908,'2021-07-15 12:33:04.640129');
INSERT INTO "Video_tracking" VALUES (133,'BRptcYJlZzE','UClCBG771sRO6Ap9s84Je7Eg','870739',40661,565,5240,'2021-07-15 12:33:04.653122');
INSERT INTO "Video_tracking" VALUES (134,'AuOURWjowm8','UClCBG771sRO6Ap9s84Je7Eg','437315',14454,2642,819,'2021-07-15 12:36:21.823595');
INSERT INTO "Video_tracking" VALUES (135,'kHL5NonHn1o','UClCBG771sRO6Ap9s84Je7Eg','227472',10327,418,867,'2021-07-15 12:36:21.835218');
INSERT INTO "Video_tracking" VALUES (136,'ihNVsSgm1eU','UClCBG771sRO6Ap9s84Je7Eg','243087',12218,457,1055,'2021-07-15 12:36:21.843360');
INSERT INTO "Video_tracking" VALUES (137,'v-qFMPbGevY','UClCBG771sRO6Ap9s84Je7Eg','362527',16524,460,955,'2021-07-15 12:36:21.854358');
INSERT INTO "Video_tracking" VALUES (138,'48YqUfAaFy0','UClCBG771sRO6Ap9s84Je7Eg','400758',20517,343,1202,'2021-07-15 12:36:21.862197');
INSERT INTO "Video_tracking" VALUES (139,'_eQa4q0yrw8','UClCBG771sRO6Ap9s84Je7Eg','385788',23062,428,1601,'2021-07-15 12:36:21.871190');
INSERT INTO "Video_tracking" VALUES (140,'V5BUnmK12bw','UClCBG771sRO6Ap9s84Je7Eg','543760',31540,474,1908,'2021-07-15 12:36:21.882498');
INSERT INTO "Video_tracking" VALUES (141,'BRptcYJlZzE','UClCBG771sRO6Ap9s84Je7Eg','870743',40661,565,5240,'2021-07-15 12:36:21.890484');
INSERT INTO "Video_tracking" VALUES (142,'LIKJinGscJI','UClCBG771sRO6Ap9s84Je7Eg','1185429',63335,1043,2137,'2021-07-15 12:36:22.550169');
INSERT INTO "Video_tracking" VALUES (143,'Ysutl1X7K4I','UCJXKKGzjjqnHAEkJsdC7ZKw','723888',43436,2074,2740,'2021-07-15 12:37:43.316423');
INSERT INTO "Video_tracking" VALUES (144,'OPpCf7tjCwY','UCJXKKGzjjqnHAEkJsdC7ZKw','1302898',75098,5860,7778,'2021-07-15 12:37:43.326981');
INSERT INTO "Video_tracking" VALUES (145,'T2jt1ScChGg','UCJXKKGzjjqnHAEkJsdC7ZKw','1241522',65248,10279,4619,'2021-07-15 12:37:43.334980');
INSERT INTO "Video_tracking" VALUES (146,'5vx0OPT9F1E','UCJXKKGzjjqnHAEkJsdC7ZKw','2114200',79578,14295,4779,'2021-07-15 12:37:43.344399');
INSERT INTO "Video_tracking" VALUES (147,'HNgJwscatgY','UCJXKKGzjjqnHAEkJsdC7ZKw','866954',30039,2240,1942,'2021-07-15 12:37:43.354455');
INSERT INTO "Video_tracking" VALUES (148,'BE9jpLPb1iw','UCJXKKGzjjqnHAEkJsdC7ZKw','763426',37515,4556,3683,'2021-07-15 12:37:43.363214');
INSERT INTO "Video_tracking" VALUES (149,'MII7wPA6GZc','UCJXKKGzjjqnHAEkJsdC7ZKw','1359366',53821,4113,3493,'2021-07-15 12:37:43.373209');
INSERT INTO "Video_tracking" VALUES (150,'cg0aqMSTyyQ','UCJXKKGzjjqnHAEkJsdC7ZKw','1047280',43292,3916,2285,'2021-07-15 12:37:43.381200');
INSERT INTO "Video_tracking" VALUES (151,'_fqtJ75hwbM','UCJXKKGzjjqnHAEkJsdC7ZKw','1303333',44978,1955,3132,'2021-07-15 12:37:43.390225');
INSERT INTO "Video_tracking" VALUES (152,'6XBOTq7txPM','UCJXKKGzjjqnHAEkJsdC7ZKw','1176286',40559,7209,2551,'2021-07-15 12:37:43.398222');
INSERT INTO "Video_tracking" VALUES (153,'FPnqeFl_FGU','UCJXKKGzjjqnHAEkJsdC7ZKw','1869911',70443,3200,4330,'2021-07-15 12:37:44.671373');
INSERT INTO "Video_tracking" VALUES (154,'Ysutl1X7K4I','UCJXKKGzjjqnHAEkJsdC7ZKw','724032',43438,2075,2740,'2021-07-15 13:24:13.801411');
INSERT INTO "Video_tracking" VALUES (155,'OPpCf7tjCwY','UCJXKKGzjjqnHAEkJsdC7ZKw','1303007',75100,5860,7777,'2021-07-15 13:24:13.814641');
INSERT INTO "Video_tracking" VALUES (156,'T2jt1ScChGg','UCJXKKGzjjqnHAEkJsdC7ZKw','1241549',65247,10279,4619,'2021-07-15 13:24:13.825684');
INSERT INTO "Video_tracking" VALUES (157,'5vx0OPT9F1E','UCJXKKGzjjqnHAEkJsdC7ZKw','2114241',79580,14295,4779,'2021-07-15 13:24:13.833694');
INSERT INTO "Video_tracking" VALUES (158,'HNgJwscatgY','UCJXKKGzjjqnHAEkJsdC7ZKw','866967',30039,2240,1942,'2021-07-15 13:24:13.841994');
INSERT INTO "Video_tracking" VALUES (159,'BE9jpLPb1iw','UCJXKKGzjjqnHAEkJsdC7ZKw','763439',37515,4556,3683,'2021-07-15 13:24:13.853255');
INSERT INTO "Video_tracking" VALUES (160,'MII7wPA6GZc','UCJXKKGzjjqnHAEkJsdC7ZKw','1359380',53821,4113,3493,'2021-07-15 13:24:13.863492');
INSERT INTO "Video_tracking" VALUES (161,'cg0aqMSTyyQ','UCJXKKGzjjqnHAEkJsdC7ZKw','1047289',43289,3914,2285,'2021-07-15 13:24:13.872538');
INSERT INTO "Video_tracking" VALUES (162,'_fqtJ75hwbM','UCJXKKGzjjqnHAEkJsdC7ZKw','1303407',44980,1955,3132,'2021-07-15 13:24:13.880559');
INSERT INTO "Video_tracking" VALUES (163,'6XBOTq7txPM','UCJXKKGzjjqnHAEkJsdC7ZKw','1176290',40559,7209,2551,'2021-07-15 13:24:13.892578');
INSERT INTO "Video_tracking" VALUES (164,'FPnqeFl_FGU','UCJXKKGzjjqnHAEkJsdC7ZKw','1869929',70443,3200,4330,'2021-07-15 13:24:13.901001');
INSERT INTO "Video_tracking" VALUES (165,'Ysutl1X7K4I','UCJXKKGzjjqnHAEkJsdC7ZKw','724112',43439,2077,2740,'2021-07-15 13:50:58.860191');
INSERT INTO "Video_tracking" VALUES (166,'OPpCf7tjCwY','UCJXKKGzjjqnHAEkJsdC7ZKw','1303064',75100,5860,7777,'2021-07-15 13:50:58.871136');
INSERT INTO "Video_tracking" VALUES (167,'T2jt1ScChGg','UCJXKKGzjjqnHAEkJsdC7ZKw','1241565',65246,10279,4619,'2021-07-15 13:50:58.879136');
INSERT INTO "Video_tracking" VALUES (168,'5vx0OPT9F1E','UCJXKKGzjjqnHAEkJsdC7ZKw','2114257',79580,14295,4779,'2021-07-15 13:50:58.888022');
INSERT INTO "Video_tracking" VALUES (169,'HNgJwscatgY','UCJXKKGzjjqnHAEkJsdC7ZKw','866974',30039,2240,1942,'2021-07-15 13:50:58.896056');
INSERT INTO "Video_tracking" VALUES (170,'BE9jpLPb1iw','UCJXKKGzjjqnHAEkJsdC7ZKw','763442',37515,4556,3683,'2021-07-15 13:50:58.904669');
INSERT INTO "Video_tracking" VALUES (171,'MII7wPA6GZc','UCJXKKGzjjqnHAEkJsdC7ZKw','1359386',53821,4113,3493,'2021-07-15 13:50:58.912642');
INSERT INTO "Video_tracking" VALUES (172,'cg0aqMSTyyQ','UCJXKKGzjjqnHAEkJsdC7ZKw','1047293',43289,3914,2285,'2021-07-15 13:50:58.920251');
INSERT INTO "Video_tracking" VALUES (173,'_fqtJ75hwbM','UCJXKKGzjjqnHAEkJsdC7ZKw','1303445',44983,1955,3132,'2021-07-15 13:50:58.929252');
INSERT INTO "Video_tracking" VALUES (174,'6XBOTq7txPM','UCJXKKGzjjqnHAEkJsdC7ZKw','1176294',40559,7209,2551,'2021-07-15 13:50:58.936830');
INSERT INTO "Video_tracking" VALUES (175,'FPnqeFl_FGU','UCJXKKGzjjqnHAEkJsdC7ZKw','1869932',70443,3200,4330,'2021-07-15 13:50:58.944848');
COMMIT;
