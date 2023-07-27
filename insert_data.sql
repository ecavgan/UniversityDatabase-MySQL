/*
SET foreign_key_checks = 0;
DELETE FROM informatics.college WHERE CName = 'Ege University';
DELETE FROM informatics.dept WHERE DCode = '500';
DELETE FROM informatics.instructor WHERE Id = '15000005';
DELETE FROM informatics.instructor WHERE Id = '15000006';
DELETE FROM informatics.student WHERE SId = '050018005';
DELETE FROM informatics.course WHERE CCode = '5001112011';
DELETE FROM informatics.section WHERE SecId = '5001112011001';
DELETE FROM informatics.section WHERE SecId = '5001112011002';
*/

SET foreign_key_checks = 0;

INSERT INTO informatics.instructor (Rank_, IName, IOffice, IPhone, DCode) VALUES
('Full', 'Murat Osman Ünalır', 'A-101', '555-1234567', 1),
('Full', 'Vecdi Aytac', 'B-202', '555-2345678', 1),
('Assistant', 'Emine Sezer', 'C-303', '555-3456789', 1),
('Full', 'Levent Toker', 'D-404', '555-4567890', 1),
('Full', 'Oğuz Dikenelli', 'E-505', '555-5678901', 1),
('Assistant', 'Aybars Uğur', 'F-606', '555-6789012', 1),
('Full', 'Hasan Bulut', 'G-707', '555-7890123', 1),
('Associate', 'Özgür Gümüş', 'H-808', '555-8901234', 1),
('Full', 'Özgün Yılmaz', 'I-909', '555-9012345', 1),
('Assistant', 'Özgü Can', 'J-1010', '555-0123456', 1),
('Full', 'Hakan Yılmaz', 'V-2121', '555-1234567', 5),
('Associate', 'İrem Şahin', 'Y-2222', '555-2345678', 4),
('Full', 'Kadir Aksoy', 'Z-2323', '555-3456789', 3),
('Full', 'Nur Yıldız', 'A-2424', '555-4567890', 2),
('Assistant', 'Ozan Demir', 'B-2525', '555-5678901', 2),
('Full', 'Pınar Aydın', 'C-2626', '555-6789012', 2),
('Assistant', 'Rıza Kara', 'D-2727', '555-7890123', 3),
('Full', 'Sema Öztürk', 'E-2828', '555-8901234', 3),
('Assistant', 'Veli Arslan', 'H-3131', '555-1234567', 4),
('Full', 'Yasemin Yıldırım', 'I-3232', '555-2345678', 4),
('Associate', 'Zeki Kılıç', 'J-3333', '555-3456789', 5),
('Full', 'Ada Akın', 'K-3434', '555-4567890', 5),
('Assistant', 'Cemal Arslan', 'K-1111', '555-1234567', 6),
('Full', 'Sevgi Yıldırım', 'L-1212', '555-2345678', 6),
('Associate', 'Nuran Kılıç', 'M-1313', '555-3456789', 7),
('Full', 'Ferhat Akın', 'N-1414', '555-4567890', 7),
('Assistant', 'Gülay Özdemir', 'O-1515', '555-5678901', 8),
('Full', 'Mehmet Yıldız', 'P-1616', '555-6789012', 8),
('Assistant', 'Ayşe Demir', 'R-1717', '555-7890123', 9),
('Full', 'Ahmet Aydın', 'S-1818', '555-8901234', 9),
('Full', 'Feyza Arslan', 'T-1919', '555-9012345', 10),
('Assistant', 'Gizem Gürbüz', 'U-2020', '555-0123456', 10);

INSERT INTO informatics.college (CName, COffice, CPhone, DeanId) VALUES
('College of Engineering', 'B502', '+902323881122', 2),
('College of Medicine', 'B001', '+902123595487', 4),
('College of Law', 'A102', '+903122102588', 26),
('College of Business Administration', 'C301', '+902122856598', 31);


INSERT INTO informatics.dept (DName, DOffice, DPhone, ChairmanId, CStartDate, CName)
VALUES
('Computer Engineering', 'Building A', '555-1234', 1, '2021-01-01', 'College of Engineering'),
('Software Engineering', 'Building B', '555-2345', 16, '2021-01-01', 'College of Engineering'),
('Information Systems', 'Building C', '555-3456', 13, '2021-01-01', 'College of Engineering'),
('Biomedical Engineering', 'Building D', '555-4567', 17, '2021-01-01', 'College of Medicine'),
('Pharmaceutical Sciences', 'Building E', '555-5678', 11, '2021-01-01', 'College of Medicine'),
('Medical Laboratory Sciences', 'Building F', '555-6789', 23, '2021-01-01', 'College of Medicine'),
('Law', 'Building G', '555-7890', 26, '2021-01-01', 'College of Law'),
('International Law', 'Building H', '555-8901', 28, '2021-01-01', 'College of Law'),
('Business Administration', 'Building I', '555-9012', 30, '2021-01-01', 'College of Business Administration'),
('Marketing', 'Building J', '555-0123', 32, '2021-01-01', 'College of Business Administration');


SET foreign_key_checks = 1;



/*
INSERT INTO informatics.student (DOB, FName, LName, LName, Addr, Phone, Major, DCode) VALUES
('2001-01-30', 'Ahmet', NULL, 'Yilmaz', NULL, NULL, NULL, NULL),
('2000-10-01', 'Cem', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-09-21', 'Sinan', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-07-11', 'Semih', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-08-12', 'Elif', NULL, NULL, NULL, NULL, NULL, NULL),
('2001-09-14', 'Mehmet', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-09-17', 'Zekai', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-10-03', 'Emre', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-08-04', 'Ceyda', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-07-05', 'Burak', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-01-10', 'Ahmet', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-02-11', 'Burak', NULL, NULL, NULL, NULL, NULL, NULL),
('2001-02-12', 'Emre', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-08-13', 'Emir', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-03-02', 'Batu', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-04-05', 'Sezgin', NULL, NULL, NULL, NULL, NULL, NULL),
('1996-11-09', 'Engin', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-12-08', 'Murat', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-09-07', 'Hande', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-09-18', 'Cenk', NULL, NULL, NULL, NULL, NULL, NULL),
('2001-03-22', 'Yagiz', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-03-23', 'Esma', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-02-27', 'Cem', NULL, NULL, NULL, NULL, NULL, NULL),
('1998-04-28', 'Sude', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-05-03', 'Samet', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-06-17', 'Ahmet', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-07-22', 'Kaan', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-10-21', 'Osman', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-09-09', 'Suleyman', NULL, NULL, NULL, NULL, NULL, NULL),
('1999-01-11', 'Cengiz', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-01-31', 'Timur', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-02-10', 'Emircan', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-02-11', 'Halil', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-04-09', 'Talha', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-05-14', 'Mete', NULL, NULL, NULL, NULL, NULL, NULL),
('2001-06-15', 'Mustafa', 'Kemal', NULL, NULL, NULL, NULL, NULL),
('2001-06-11', 'Umit', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-06-23', 'Azra', NULL, NULL, NULL, NULL, NULL, NULL),
('2000-06-22', 'Hande', NULL, NULL, NULL, NULL, NULL, NULL),
('1999-03-20', 'Taner', NULL, NULL, NULL, NULL, NULL, NULL);
*/

INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2003-03-16','Sonay','Kuş','Bursa','+906187531668','Computer Engineering',1),
  ('1994-09-05','Mehmet','Turgut','Salihli','+907638758186','Software Engineering',2),
  ('1994-01-14','Seçkin','Şengül','Seydişehir','+905583751220','Information Systems',3),
  ('2003-05-09','Hande','Karaca','Ergani','+909845281670','Biomedical Engineering',4),
  ('1993-11-08','Onat','Özer','Tire','+905520115178','Pharmaceutical Sciences',5),
  ('1994-09-15','Tuğba','Erdem','Ereğli','+908639869612','Medical Laboratory Sciences',6),
  ('2002-10-05','Meltem','Akça','Vezirköprü','+907482534742','Law',7),
  ('2001-01-23','Emel','Korkmaz','Çarşamba','+905781125683','International Law',8),
  ('2004-03-18','Bünyamin','Sevim','İskenderun','+904780210603','Business Administration',9),
  ('1995-11-07','Mustafa','Taş','Göksun','+908044395518','Marketing',10),
  ('1999-06-23','Müslim','Çam','Istanbul','+906787228194','Computer Engineering',1),
  ('2000-01-07','Bayram','Kaplan','Gaziantep','+907418635674','Software Engineering',2),
  ('1998-12-18','Sevil','Turan','Anamur','+901286886461','Information Systems',3),
  ('1993-06-10','Mümtaz','Şen','Göksun','+900077492327','Biomedical Engineering',4),
  ('1996-12-25','Gürkan','Savaş','Mustafakemalpaşa','+904853152576','Pharmaceutical Sciences',5);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2003-06-15','Zühal','Dağ','Salihli','+906853366125','Medical Laboratory Sciences',6),
  ('1998-12-06','Muammer','Uslu','Kozan','+901287280755','Law',7),
  ('1993-04-05','Mehmet','Yaman','Kozan','+906341720316','International Law',8),
  ('1998-06-02','Ahmet','Dönmez','Istanbul','+901516454137','Business Administration',9),
  ('1995-11-26','Murat','Çakar','Kumluca','+903567512640','Marketing',10);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2003-08-12','Tuba','Gültekin','Siverek','+900158960477','Computer Engineering',1),
  ('2001-07-30','Mehmet','Doğan','Ödemiş','+908755671088','Software Engineering',2),
  ('2003-04-11','Yener','Kahraman','Akhisar','+900910835065','Information Systems',3),
  ('1995-04-24','Nazmi','Aslan','Pınarbaşı','+907558386651','Biomedical Engineering',4),
  ('1997-04-13','Irazca','Fidan','Karacabey','+905811476493','Pharmaceutical Sciences',5),
  ('1993-12-25','Özden','Şeker','Kumluca','+903295456131','Medical Laboratory Sciences',6),
  ('2000-02-03','Eylül','Mutlu','Ceyhan','+907959488245','Law',7),
  ('1996-11-27','Zühal','Dağ','Kahramanmaraş','+908652158168','International Law',8),
  ('1995-04-09','Kezban','Akkaya','Kumluca','+902752321373','Business Administration',9),
  ('1998-01-23','Tuba','Akman','İzmit','+907494126247','Marketing',10),
  ('2001-08-05','Kerim','Köse','Çeşme','+907624571834','Computer Engineering',1),
  ('1996-02-06','Şafak','Öner','Anamur','+908182230163','Software Engineering',2),
  ('1999-04-16','Cenk','Ekinci','Balıkesir','+902777244909','Information Systems',3),
  ('1999-09-26','Nazmi','Demirbaş','Aydın','+901638110303','Biomedical Engineering',4),
  ('1997-08-07','Elif','Can','Antalya','+906758773247','Pharmaceutical Sciences',5);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2004-06-09','Ali','Zengin','Afşin','+906581649410','Medical Laboratory Sciences',6),
  ('2003-11-18','Mehmet','Koç','Silvan','+905974476138','Law',7),
  ('1993-08-20','Bülent','Akdağ','Nizip','+902145529632','International Law',8),
  ('2000-02-17','Mümtaz','Tosun','Develi','+908536273137','Business Administration',9),
  ('2003-08-06','Merih','Gedik','Soma','+907478780701','Marketing',10);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2001-08-18','Işil','Sezgin','Vezirköprü','+903259392155','Computer Engineering',1),
  ('1995-08-01','Ibrahim','Özkan','Soma','+902832232822','Software Engineering',2),
  ('2002-05-20','Kenan','Coşkun','Alanya','+907247465624','Information Systems',3),
  ('2002-02-13','Emin','Demirel','Diyarbakır','+902770336552','Biomedical Engineering',4),
  ('1997-11-24','Fatih','Karataş','Istanbul','+900672657772','Pharmaceutical Sciences',5),
  ('1995-08-30','Seçkin','Savaş','Kahramanmaraş','+903862213170','Medical Laboratory Sciences',6),
  ('2000-05-18','Leziz','Kuru','Şereflikoçhisar','+906636441611','Law',7),
  ('1992-07-29','Songül','Gültekin','Konya','+908808505689','International Law',8),
  ('1997-01-11','Hayati','Çakmak','Antalya','+906783765454','Business Administration',9),
  ('1999-06-25','Çetin','Baran','Gölcük','+908195787132','Marketing',10),
  ('1998-10-06','Bünyamin','Topçu','Gölcük','+904603576374','Computer Engineering',1),
  ('1993-12-06','Ersagun','Özkan','Istanbul','+904212254534','Software Engineering',2),
  ('1999-10-03','Deniz','Aras','Didim','+904860505402','Information Systems',3),
  ('1994-10-01','Nafiz','Yücel','Kızılcahamam','+904328771501','Biomedical Engineering',4),
  ('1994-12-05','Sonay','Sarı','Kızılcahamam','+907653416286','Pharmaceutical Sciences',5);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2001-09-15','Bilge','Koçak','Şanlıurfa','+903127363424','Medical Laboratory Sciences',6),
  ('1992-12-07','Arda','Dinç','Kızılcahamam','+905703213846','Law',7),
  ('1996-08-17','Elif','Uğur','Serik','+901586673073','International Law',8),
  ('1998-08-23','Sinan','Baş','Terme','+906771671851','Business Administration',9),
  ('1998-02-04','Asli','Çiftçi','Ödemiş','+900923445357','Marketing',10);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2000-04-27','Tümay','Şeker','Nurdağı','+908604751086','Computer Engineering',1),
  ('2001-04-11','Bilge','Gökçe','Bafra','+907539409815','Software Engineering',2),
  ('1992-10-22','Saadet','Parlak','Ergani','+901117413318','Information Systems',3),
  ('1994-11-03','Mustafa','Coşkun','İzmit','+901552957225','Biomedical Engineering',4),
  ('1994-03-22','Zümrüt','Şimşek','Silifke','+906527556251','Pharmaceutical Sciences',5),
  ('1994-12-10','Özlem','Şenol','Turgutlu','+907325884852','Medical Laboratory Sciences',6),
  ('2001-01-03','Cengiz','Sönmez','Nurdağı','+902666122804','Law',7),
  ('1999-11-13','Murat','Gündüz','Bandırma','+909102392151','International Law',8),
  ('1994-02-04','Ali','Özen','Istanbul','+908688611529','Business Administration',9),
  ('1996-04-11','Özlem','Yavuz','Kumluca','+907835646145','Marketing',10),
  ('1997-04-16','Nevin','Güneş','Reyhanlı','+901192787883','Computer Engineering',1),
  ('2002-10-17','Fatih','Karagöz','İmamoğlu','+902619662241','Software Engineering',2),
  ('2004-07-02','Zümrüt','Bayraktar','Kuşadası','+901871279713','Information Systems',3),
  ('2002-09-17','Hatice','Akgün','Seydişehir','+906920214734','Biomedical Engineering',4),
  ('1995-11-05','Fuat','Polat','Nurdağı','+908527514431','Pharmaceutical Sciences',5);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('1993-10-30','Hatice','Budak','Beypazarı','+907083770373','Medical Laboratory Sciences',6),
  ('2001-11-23','Saadet','Yalçın','Istanbul','+906826447451','Law',7),
  ('1993-11-19','Gökhan','Uzun','Didim','+905653856421','International Law',8),
  ('1994-02-15','Taylan','İpek','Nazilli','+909638135517','Business Administration',9),
  ('1994-08-21','Nihal','Dündar','Ergani','+901613601546','Marketing',10);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2002-01-13','Engin','Karahan','Ereğli','+903602658518','Computer Engineering',1),
  ('1997-07-17','Özgül','Güner','Söke','+908186234696','Software Engineering',2),
  ('1999-04-29','Nurdan','Karadağ','Ergani','+906820426472','Information Systems',3),
  ('2003-02-20','Hayri','Dinç','Konya','+900605380921','Biomedical Engineering',4),
  ('2001-06-18','Bala','Karahan','İskenderun','+901744407545','Pharmaceutical Sciences',5),
  ('2002-04-02','Çetin','Öksüz','Adana','+900448770687','Medical Laboratory Sciences',6),
  ('2002-09-10','Hande','Topal','Samsun','+905564603661','Law',7),
  ('1998-09-23','Evren','Avcı','Siverek','+901562383692','International Law',8),
  ('1993-08-16','Rezan','Sevinç','Muradiye','+908726537062','Business Administration',9),
  ('1997-07-07','Berna','Soylu','Izmir','+903412011632','Marketing',10),
  ('2001-01-25','Bedriye','Yalçın','Develi','+904444542833','Computer Engineering',1),
  ('1994-02-13','Dilek','Savaş','Kızılcahamam','+902249466377','Software Engineering',2),
  ('2003-02-21','Şafak','Ayaz','Kuşadası','+906424118413','Information Systems',3),
  ('1999-02-10','Fatih','Özden','Körfez','+907878155243','Biomedical Engineering',4),
  ('1999-11-02','Hayri','Ateş','Bafra','+908204336013','Pharmaceutical Sciences',5);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2003-02-26','Serkan','Aygün','Göksun','+907026257337','Medical Laboratory Sciences',6),
  ('1995-04-23','Erkan','Sezer','Dörtyol','+904721178226','Law',7),
  ('1995-05-01','Özden','Çakır','Kumluca','+908824371624','International Law',8),
  ('2000-04-11','Birgül','Gök','Yahyalı','+901678845607','Business Administration',9),
  ('1998-04-17','Feyza','Şimşek','Bostaniçi','+900576936864','Marketing',10);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2001-05-01','Ezgi','Temel','Polatlı','+906673222826','Computer Engineering',1),
  ('1996-09-24','Birsen','Kuru','Çeşme','+907641843760','Software Engineering',2),
  ('1995-09-20','Tarkan','Sevinç','Ereğli','+905564745292','Information Systems',3),
  ('2001-06-08','Onur','Akar','Samsun','+902059365049','Biomedical Engineering',4),
  ('2000-11-15','Feza','Eser','Kırıkhan','+907255188610','Pharmaceutical Sciences',5),
  ('1993-01-31','Aksel','İpek','Viranşehir','+901162519580','Medical Laboratory Sciences',6),
  ('1997-12-30','Hatun','Dündar','Akhisar','+903064870840','Law',7),
  ('2001-07-04','Tarkan','Usta','Akhisar','+903625283341','International Law',8),
  ('2003-12-05','Hande','Akman','Samsun','+902683058384','Business Administration',9),
  ('1992-09-08','Tuba','Günay','Siverek','+902483403889','Marketing',10),
  ('2002-06-03','Deram','Çakar','Istanbul','+908523941478','Computer Engineering',1),
  ('2000-07-03','Mansur','Can','Serik','+904712242848','Software Engineering',2),
  ('1996-01-15','Yaser','Kılınç','Van','+905215687277','Information Systems',3),
  ('2002-01-22','Hatice','Taş','Silifke','+904952783632','Biomedical Engineering',4),
  ('1996-12-01','Şenay','Gökçe','Aydın','+902340814334','Pharmaceutical Sciences',5);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2001-10-06','Asli','Akdeniz','Bergama','+904116976776','Medical Laboratory Sciences',6),
  ('1996-06-11','Kamil','Çetin','Kozan','+906785512271','Law',7),
  ('2004-04-20','Zümrüt','Esen','Muradiye','+904418204610','International Law',8),
  ('2002-10-29','Özgün','Ölmez','Bandırma','+907727323177','Business Administration',9),
  ('1998-07-28','Derya','Köksal','Turgutlu','+901685856917','Marketing',10);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('1998-10-27','Alpaslan','Öksüz','Didim','+908561761912','Computer Engineering',1),
  ('2000-06-02','Fatih','Sarıkaya','Afşin','+907277776411','Software Engineering',2),
  ('1995-01-24','Şükrü','Sağlam','Serik','+902251156654','Information Systems',3),
  ('1998-08-22','Tarkan','Taşkın','Edremit','+901823882628','Biomedical Engineering',4),
  ('2000-12-09','Esra','Çam','Bergama','+900455819781','Pharmaceutical Sciences',5),
  ('2000-12-07','Ismail','Uysal','Van','+904683391665','Medical Laboratory Sciences',6),
  ('1993-04-06','Yaser','Ekinci','Bandırma','+903472820531','Law',7),
  ('1993-01-10','Inci','Yiğit','Alanya','+900324303317','International Law',8),
  ('1997-09-21','Seda','Varol','Pozantı','+907971712282','Business Administration',9),
  ('1996-11-20','Inci','Kaçar','Beypazarı','+909137738590','Marketing',10),
  ('2001-03-15','Bülent','Özçelik','Afşin','+901887136516','Computer Engineering',1),
  ('1999-10-11','Hüseyin','Özmen','Silifke','+907485231064','Software Engineering',2),
  ('1994-04-23','Sedef','Balcı','Bursa','+908293487715','Information Systems',3),
  ('1997-05-08','Yaşar','Gürsoy','Söke','+903814524769','Biomedical Engineering',4),
  ('2002-12-25','Hale','Karakuş','Yahyalı','+908864431573','Pharmaceutical Sciences',5);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2002-08-14','Haluk','Bal','Söke','+907460160624','Medical Laboratory Sciences',6),
  ('1995-01-10','Ayşen','Çolak','Erdemli','+902268687661','Law',7),
  ('1999-01-13','Evren','Gündüz','Akşehir','+901808871314','International Law',8),
  ('2003-12-06','Hatice','Bulut','Istanbul','+904737278294','Business Administration',9),
  ('1995-12-24','Zülfiye','Bal','Birecik','+901441677643','Marketing',10);
INSERT INTO informatics.student (DOB,FName,LName,Addr,Phone,Major,DCode)
VALUES
  ('2004-06-09','Özlem','Erol','Ceyhan','+908032818583','Computer Engineering',1),
  ('1994-11-10','Nuray','Ergin','Karacabey','+901398714136','Software Engineering',2),
  ('1997-12-24','Haluk','Kuş','Mersin','+901575315834','Information Systems',3),
  ('2004-03-13','Mustafa','Kara','Gebze','+905651051324','Biomedical Engineering',4),
  ('1997-10-21','Nur','Karakaya','Antakya','+900952552189','Pharmaceutical Sciences',5),
  ('1992-08-09','Samet','Kuru','Pınarbaşı','+903757460834','Medical Laboratory Sciences',6),
  ('1995-05-30','Ilknur','Demirci','Kozan','+901728843426','Law',7),
  ('1996-05-21','Duygu','Eroğlu','Tire','+905301748375','International Law',8),
  ('2002-05-12','Mustafa','Sevinç','Salihli','+902462888656','Business Administration',9),
  ('1995-03-10','Tuba','Taşdemir','Silvan','+907217738933','Marketing',10);

INSERT INTO informatics.course (Credits, CoName, Level_, CDesc, DCode)
VALUES
(2, 'Bilgisayar Programlama', 'Undergraduate', 'augue, eu tempor', 1),
(9, 'Veri Madenciliği', 'Graduate', 'consequat, lectus sit', 2),
(5, 'İnternet Teknolojileri', 'Undergraduate', 'vitae dolor. Donec', 3),
(2, 'Bilgisayar Ağları', 'Graduate', 'Proin dolor. Nulla', 1),
(10, 'Veritabanı Yönetimi', 'Undergraduate', 'ornare sagittis felis.', 1),
(1, 'Bilgisayar Donanımı', 'Undergraduate', 'mauris elit, dictum', 6),
(3, 'Yapay Zeka', 'Graduate', 'parturient montes, nascetur', 7),
(7, 'Web Geliştirme', 'Undergraduate', 'elit, pharetra ut,', 8),
(10, 'Bilgisayar Mimarisi', 'Undergraduate', 'elementum, dui quis', 9),
(7, 'Bilgisayar Güvenliği', 'Graduate', 'Curabitur dictum. Phasellus', 10),
(6, 'Bilgisayar Programlama Dilleri', 'Graduate', 'gravida sit amet,', 1),
(6, 'Bilgisayar Mühendisliğine Giriş', 'Graduate', 'sem ut cursus', 2),
(8, 'Web Tabanlı Uygulama Geliştirme', 'Undergraduate', 'vel est tempor', 3),
(2, 'Yazılım Tasarımı ve Modelleme', 'Graduate', 'ullamcorper. Duis cursus,', 4),
(6, 'Bilgisayar Ağları Programlama', 'Graduate', 'Mauris quis turpis', 5);
INSERT INTO informatics.course (Credits, CoName, Level_, CDesc, DCode)
VALUES
(2, 'Veri Analitiği', 'Undergraduate', 'ultricies dignissim lacus.', 6),
(6, 'Yazılım Geliştirme Metodolojileri', 'Graduate', 'dictum ultricies ligula.', 7),
(2, 'Ayrik Yapilar', 'Graduate', 'quis massa. Mauris', 8),
(7, 'Bilgisayar Bilimleri Semineri', 'Graduate', 'a, facilisis non,', 9),
(8, 'Bilişim Sistemleri Yönetimi', 'Graduate', 'sed, hendrerit a,', 10),
  (2, 'Nesne Yönelimli Programlama', 'Graduate', 'in magna. Phasellus', 1),
  (9, 'Bilgisayar Sistemleri Analizi ve Tasarımı', 'Graduate', 'mauris erat eget', 2),
  (4, 'Bilgisayar Mühendisliği Laboratuvarı', 'Graduate', 'Nam nulla magna,', 3),
  (3, 'Bilgisayar Programlama Temelleri', 'Graduate', 'tempor diam dictum', 4),
  (6, 'Bilgisayar Ağları ve İnternet Teknolojileri', 'Graduate', 'faucibus leo, in', 5),
  (2, 'Veritabanı Yönetimi ve Uygulamaları', 'Graduate', 'egestas nunc sed', 6),
  (9, 'Bilgisayar Bilimlerinde İleri Konular', 'Graduate', 'lectus pede, ultrices', 7),
  (5, 'Bilgisayar Programlama ve Algoritmalar', 'Undergraduate', 'consectetuer euismod est', 8),
  (2, 'Bilgisayar Ağları ve İletişim Sistemleri', 'Graduate', 'dis parturient montes,', 9),
  (8, 'Yazılım Mühendisliği ve Uygulamaları', 'Undergraduate', 'ac, eleifend vitae,', 10);

INSERT INTO informatics.section (SecNo, Sem, Year_, Bldg, RoomNo, DaysTime, InsId, CCode)
VALUES
  (1, 'Summer', 4, '282-923 Risus. Av.', '36784', '1', 14, 25),
  (1, 'Fall', 2, '892-5292 Vitae Avenue', '15229', '1', 8, 26),
  (1, 'Spring', 1, '1788 Imperdiet Rd.', '25837', '1', 9, 24),
  (1, 'Summer', 7, 'Ap #141-6264 Turpis Rd.', '46781', '1', 6, 1);

INSERT INTO informatics.section (SecNo, Sem, Year_, Bldg, RoomNo, DaysTime, InsId, CCode)
VALUES
  (1, 'Spring', 7, '7442 Hendrerit. Street', '31268', '1', 11, 22),
  (1, 'Fall', 5, '753-7176 Neque Av.', '65824', '1', 18, 13),
  (1, 'Spring', 6, '3781 Euismod St.', '04575', '1', 16, 27);

INSERT INTO informatics.section (SecNo, Sem, Year_, Bldg, RoomNo, DaysTime, InsId, CCode)
VALUES
  (1, 'Fall', 1, '3093 Maecenas St.', '22428', '2', 4, 4);

INSERT INTO informatics.section (SecNo, Sem, Year_, Bldg, RoomNo, DaysTime, InsId, CCode)
VALUES
  (1, 'Spring', 8, 'Ap #902-3478 Malesuada Street', '12373', '1', 3, 24),
  (1, 'Spring', 4, '5258 Pretium Street', '22878', '2', 17, 2),
  (1, 'Fall', 3, '244-1577 Aliquam Rd.', '21728', '1', 2, 18),
  (1, 'Spring', 7, '249-7957 Enim. St.', '31356', '2', 12, 11);

INSERT INTO informatics.section (SecNo, Sem, Year_, Bldg, RoomNo, DaysTime, InsId, CCode)
VALUES
  (1, 'Summer', 7, 'P.O. Box 998, 4200 Malesuada Rd.', '63659', '2', 20, 22),
  (1, 'Fall', 1, '6647 Ad Road', '53653', '2', 1, 5),
  (1, 'Summer', 3, 'Ap #201-4838 Magna Rd.', '78635', '1', 15, 13),
  (1, 'Fall', 5, 'Ap #532-9969 Dui, Av.', '19425', '2', 7, 7),
  (1, 'Spring', 5, '4504 Faucibus Street', '54781', '1', 19, 5),
  (1, 'Spring', 7, '128-5821 Felis Street', '16118', '1', 13, 17),
  (1, 'Fall', 5, 'P.O. Box 567, 5167 A Rd.', '51852', '1', 10, 4),
  (1, 'Summer', 2, 'Ap #172-6484 Eleifend. Street', '75588', '2', 1, 3),
  (1, 'Spring', 6, '9601 Mi, St.', '22849', '1', 8, 29),
  (1, 'Spring', 5, 'Ap #670-3897 Convallis, Ave', '05220', '1', 14, 20),
  (1, 'Spring', 3, '491-6285 Justo Rd.', '55335', '2', 9, 11),
  (1, 'Spring', 7, '3534 Facilisis Avenue', '24235', '3', 16, 6),
  (1, 'Fall', 3, 'P.O. Box 788, 3478 Nascetur Rd.', '05657', '2', 17, 2),
  (1, 'Summer', 6, 'Ap #675-1865 Orci Road', '64616', '1', 2, 9);

INSERT INTO informatics.section (SecNo, Sem, Year_, Bldg, RoomNo, DaysTime, InsId, CCode)
VALUES
  (2, 'Summer', 7, 'P.O. Box 998, 4200 Malesuada Rd.', '63659', '2', 18, 22),
  (2, 'Fall', 2, '6647 Ad Road', '53653', '2', 10, 5),
  (2, 'Summer', 3, 'Ap #201-4838 Magna Rd.', '78635', '1', 7, 13),
  (2, 'Fall', 5, 'Ap #532-9969 Dui, Av.', '19425', '2', 3, 7),
  (2, 'Spring', 5, '4504 Faucibus Street', '54781', '1', 1, 5),
  (2, 'Spring', 7, '128-5821 Felis Street', '16118', '1', 20, 17),
  (2, 'Fall', 5, 'P.O. Box 567, 5167 A Rd.', '51852', '1', 19, 4),
  (2, 'Summer', 2, 'Ap #172-6484 Eleifend. Street', '75588', '2', 6, 5),
  (2, 'Spring', 6, '9601 Mi, St.', '22849', '1', 5, 29),
  (2, 'Spring', 5, 'Ap #670-3897 Convallis, Ave', '05220', '1', 4, 20),
  (2, 'Spring', 3, '491-6285 Justo Rd.', '55335', '2', 2, 11),
  (2, 'Spring', 7, '3534 Facilisis Avenue', '24235', '3', 15, 6),
  (2, 'Fall', 3, 'P.O. Box 788, 3478 Nascetur Rd.', '05657', '2', 12, 2),
  (2, 'Summer', 6, 'Ap #675-1865 Orci Road', '64616', '1', 16, 9);


INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (86,25,'AA'),
  (143,10,'BA'),
  (112,4,'BB'),
  (76,23,'CB'),
  (88,39,'CC'),
  (67,15,'DC'),
  (51,23,'DD'),
  (112,19,'FD'),
  (75,30,'FF'),
  (94,3,'AA');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (49,18,'BA'),
  (8,14,'BB'),
  (76,5,'CB'),
  (76,40,'CC'),
  (54,36,'DC'),
  (19,11,'DD'),
  (92,37,'FD'),
  (7,10,'FF'),
  (137,6,'AA'),
  (52,35,'BA');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (26,30,'BB'),
  (122,11,'CB'),
  (38,15,'CC'),
  (45,30,'DC'),
  (102,4,'DD'),
  (88,33,'FD'),
  (144,38,'FF'),
  (84,11,'AA'),
  (56,14,'BA'),
  (123,15,'BB');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (9,11,'CB'),
  (48,17,'CC'),
  (2,4,'DC'),
  (81,27,'DD'),
  (143,5,'FD'),
  (114,10,'FF'),
  (14,8,'AA'),
  (44,19,'BA'),
  (139,8,'BB'),
  (144,29,'CB');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (127,4,'CC'),
  (149,14,'DC'),
  (104,19,'DD'),
  (72,29,'FD'),
  (65,29,'FF'),
  (21,23,'AA'),
  (146,21,'BA'),
  (34,6,'BB'),
  (42,6,'CB'),
  (51,32,'CC');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (85,3,'DC'),
  (25,11,'DD'),
  (95,2,'FD'),
  (123,31,'FF'),
  (50,2,'AA'),
  (4,27,'BA'),
  (143,2,'BB'),
  (25,35,'CB'),
  (16,5,'CC'),
  (144,21,'DC');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (49,26,'DD'),
  (73,35,'FD'),
  (137,3,'FF'),
  (19,30,'AA'),
  (104,31,'BA'),
  (108,27,'BB'),
  (4,3,'CB'),
  (109,19,'CC'),
  (126,6,'DC'),
  (53,36,'DD');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (75,9,'FD'),
  (69,39,'FF'),
  (95,28,'AA'),
  (29,35,'BA'),
  (26,5,'BB'),
  (108,23,'CB'),
  (10,24,'CC'),
  (45,39,'DC'),
  (133,37,'DD'),
  (146,12,'FD');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (138,8,'FF'),
  (58,32,'AA'),
  (103,27,'BA'),
  (47,22,'BB'),
  (6,38,'CB'),
  (114,13,'CC'),
  (7,28,'DC'),
  (110,3,'DD'),
  (60,39,'FD'),
  (10,15,'FF');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (11,2,'AA'),
  (82,29,'BA'),
  (84,14,'BB'),
  (101,25,'CB'),
  (92,33,'CC'),
  (70,40,'DC'),
  (31,39,'DD'),
  (100,2,'FD'),
  (97,23,'FF'),
  (12,31,'AA');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (128,26,'BA'),
  (45,16,'BB'),
  (88,27,'CB'),
  (63,20,'CC'),
  (122,36,'DC'),
  (131,32,'DD'),
  (122,32,'FD'),
  (104,5,'FF'),
  (107,2,'AA'),
  (40,34,'BA');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (10,3,'BB'),
  (56,34,'CB'),
  (21,8,'CC'),
  (50,19,'DC'),
  (89,30,'DD'),
  (38,37,'FD'),
  (53,8,'FF'),
  (61,3,'AA'),
  (39,20,'BA'),
  (1,7,'BB');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (81,30,'CB'),
  (111,20,'CC'),
  (142,22,'DC'),
  (88,5,'DD'),
  (60,30,'FD'),
  (48,29,'FF'),
  (30,19,'AA'),
  (114,26,'BA'),
  (12,34,'BB'),
  (84,22,'CB');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (25,40,'CC'),
  (84,29,'DC'),
  (50,37,'DD'),
  (64,27,'FD'),
  (55,21,'FF'),
  (140,11,'AA'),
  (27,26,'BA'),
  (139,4,'BB'),
  (68,19,'CB');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (102,2,'DC'),
  (34,34,'DD'),
  (89,11,'FD'),
  (51,29,'FF'),
  (85,20,'AA'),
  (29,17,'BA'),
  (120,15,'BB'),
  (50,7,'CB'),
  (6,17,'CC'),
  (32,36,'DC');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (144,11,'DD'),
  (23,17,'FD'),
  (20,2,'FF'),
  (72,23,'AA'),
  (11,10,'BA'),
  (82,14,'BB'),
  (44,30,'CB'),
  (86,30,'CC'),
  (66,14,'DC'),
  (50,15,'DD');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (111,6,'FD'),
  (141,39,'FF'),
  (66,39,'AA'),
  (94,13,'BA'),
  (17,39,'BB'),
  (145,28,'CB'),
  (75,19,'CC'),
  (117,39,'DC'),
  (10,9,'DD'),
  (148,38,'FD');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (129,16,'FF'),
  (4,2,'AA'),
  (130,3,'BA'),
  (81,9,'BB'),
  (26,19,'CB'),
  (18,7,'CC'),
  (49,3,'DC'),
  (97,31,'DD'),
  (84,3,'FD'),
  (148,27,'FF');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (107,4,'AA'),
  (104,26,'BA'),
  (34,2,'BB'),
  (13,34,'CB'),
  (147,4,'CC'),
  (95,37,'DC'),
  (92,30,'DD'),
  (70,11,'FD'),
  (18,35,'FF'),
  (32,20,'AA');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (96,30,'BA'),
  (33,5,'BB'),
  (2,3,'CB'),
  (103,16,'CC'),
  (94,12,'DC'),
  (122,2,'DD'),
  (47,18,'FD'),
  (7,38,'FF'),
  (47,26,'AA');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (42,2,'BB'),
  (47,16,'CB'),
  (82,16,'CC'),
  (127,29,'DC'),
  (12,7,'DD'),
  (122,13,'FD'),
  (46,3,'FF'),
  (30,5,'AA'),
  (118,2,'BA'),
  (15,20,'BB');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (2,31,'CB'),
  (20,3,'CC'),
  (118,40,'DC'),
  (139,26,'DD'),
  (20,34,'FD'),
  (42,14,'FF'),
  (1,11,'AA'),
  (6,24,'BA'),
  (7,29,'BB'),
  (56,27,'CB');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (73,24,'DC'),
  (76,17,'DD'),
  (44,36,'FD'),
  (62,13,'FF'),
  (49,23,'AA'),
  (95,30,'BA'),
  (80,16,'BB'),
  (61,15,'CB'),
  (53,25,'CC');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (99,37,'DC'),
  (60,11,'DD'),
  (132,35,'FD'),
  (52,34,'FF'),
  (68,13,'AA'),
  (110,12,'BA'),
  (57,21,'BB'),
  (37,3,'CB'),
  (138,22,'CC'),
  (85,25,'DC');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (85,1,'DD'),
  (105,8,'FD'),
  (99,28,'FF'),
  (24,27,'AA'),
  (5,27,'BA'),
  (52,1,'BB'),
  (45,20,'CB'),
  (10,2,'CC'),
  (141,17,'DC'),
  (90,12,'DD');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (57,24,'FD'),
  (109,9,'FF'),
  (90,29,'AA'),
  (38,19,'BA'),
  (4,30,'BB'),
  (118,4,'CB'),
  (28,30,'CC'),
  (14,11,'DC'),
  (143,13,'DD'),
  (139,11,'FD');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (18,17,'FF'),
  (34,4,'AA'),
  (62,19,'BA'),
  (37,14,'BB'),
  (18,27,'CB'),
  (31,2,'CC'),
  (130,25,'DC'),
  (135,7,'DD'),
  (66,4,'FF');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (61,25,'AA'),
  (2,10,'BB'),
  (24,16,'CB'),
  (147,32,'CC'),
  (143,18,'DC'),
  (83,13,'DD'),
  (128,20,'FD'),
  (97,32,'AA');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (110,26,'BA'),
  (89,21,'BB'),
  (134,29,'CB'),
  (53,9,'CC'),
  (26,27,'DD'),
  (135,31,'FD'),
  (33,38,'FF'),
  (124,39,'AA'),
  (143,6,'BA');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (11,21,'BB'),
  (71,35,'CB'),
  (143,17,'CC'),
  (73,3,'DD'),
  (136,22,'FD'),
  (21,13,'FF'),
  (51,39,'AA'),
  (46,31,'BA'),
  (138,19,'BB');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (136,8,'CB'),
  (35,19,'CC'),
  (94,40,'DC'),
  (52,9,'DD'),
  (58,7,'FD'),
  (64,33,'FF'),
  (63,22,'AA'),
  (73,13,'BA'),
  (77,39,'BB'),
  (80,22,'CB');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (56,17,'CC'),
  (124,26,'DC'),
  (104,4,'DD'),
  (56,20,'FD'),
  (47,27,'FF'),
  (113,24,'AA'),
  (43,14,'BA'),
  (115,8,'BB'),
  (82,31,'CB'),
  (90,35,'CC');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (142,11,'DC'),
  (86,39,'DD'),
  (32,32,'FD'),
  (144,8,'AA'),
  (91,5,'BA'),
  (145,23,'BB'),
  (14,39,'CB'),
  (149,26,'CC'),
  (121,15,'DC');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (70,2,'DD'),
  (135,19,'FD'),
  (21,19,'FF'),
  (96,13,'AA'),
  (22,2,'BA'),
  (148,2,'BB'),
  (76,29,'CB'),
  (104,14,'CC'),
  (123,26,'DC'),
  (86,37,'DD');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (55,32,'FD'),
  (139,24,'FF'),
  (27,39,'AA'),
  (109,40,'BA'),
  (66,38,'BB'),
  (30,37,'CB'),
  (147,39,'CC'),
  (43,28,'DC'),
  (10,21,'DD');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (30,24,'AA'),
  (135,20,'BA'),
  (24,23,'BB'),
  (132,5,'CB'),
  (88,22,'CC'),
  (111,25,'DC'),
  (135,3,'DD'),
  (120,10,'FD');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (121,18,'AA'),
  (113,13,'BA'),
  (14,40,'BB'),
  (124,35,'CB'),
  (49,16,'CC'),
  (62,23,'DD'),
  (2,8,'FD'),
  (97,28,'FF'),
  (77,8,'AA');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (8,31,'BA'),
  (30,32,'BB'),
  (114,5,'CB'),
  (32,35,'CC'),
  (75,24,'DC'),
  (116,32,'FD'),
  (46,21,'AA'),
  (119,18,'BA');
INSERT INTO informatics.student_takes (SId,SecId,Grade)
VALUES
  (120,20,'BB'),
  (149,25,'CB'),
  (16,26,'CC'),
  (2,37,'DC'),
  (4,23,'DD'),
  (29,10,'FD'),
  (17,18,'FF'),
  (105,35,'AA'),
  (121,1,'AA'),
  (113,1,'BA'),
  (14,1,'BB'),
  (124,1,'CB'),
  (49,1,'CC'),
  (110,10,'BA'),
  (127,16,'BB');