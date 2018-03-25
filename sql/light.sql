#设置编码格式，初始化数据库
SET NAMES UTF8;
DROP DATABASE IF EXISTS lightinthebox;
CREATE DATABASE lightinthebox CHARSET=UTF8;
USE lightinthebox;

#创建商品类型表：light_xiaomi_type
#包含列：tid tname img count
DROP TABLE IF EXISTS light_xiaomi_type;
CREATE TABLE light_xiaomi_type(
    tid INT PRIMARY KEY auto_increment,
    tname VARCHAR(32) NOT NULL,
    img VARCHAR(128) NOT NULL,
    count INT NOT NULL
);
#records of light_xiaomi_type
INSERT INTO light_xiaomi_type VALUES("1","Xiaomi Cellphones","/images/Xiaomi_Online/picxiaomi_002.JPG",19);
INSERT INTO light_xiaomi_type VALUES("2","Xiaomi Smart Devices","/images/Xiaomi_Online/picxiaomi_004.JPG",48);
INSERT INTO light_xiaomi_type VALUES("3","Xiaomi Acessories","/images/Xiaomi_Online/picxiaomi_005.JPG",77);
INSERT INTO light_xiaomi_type VALUES("4","Xiaomi Cameras","/images/Xiaomi_Online/picxiaomi_006.JPG",14);
INSERT INTO light_xiaomi_type VALUES("5","Xiaomi Laptops & Tablets","/images/Xiaomi_Online/picxiaomi_007.JPG",14);

#TABLE structure for light_xiaomi_cellphones
DROP TABLE IF EXISTS light_xiaomi_cellphones;
CREATE TABLE light_xiaomi_cellphones(
    tid INT NOT NULL,
    pid INT PRIMARY KEY auto_increment,
    title VARCHAR(128) NOT NULL,
    price DECIMAL(7,2) NOT NULL,
    salescount INT NOT NULL,
    freeShipping BOOL,
    lightningsale BOOL,
    favorite INT NOT NULL,
    img VARCHAR(128) NOT NULL
);

#records of light_xiaomi_cellphones
INSERT INTO light_xiaomi_cellphones VALUES("1",1,"Xiaomi Redmi 4A 5 inch 4.6-5.0  4G Smartphone ( 2GB + 16GB 13 MP Qualcomm Snapdragon 425 3120mAh)",79.98,1004,true,true,5678,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_002.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",2,"Xiaomi MI NOTE 3 5.5 inch 4G Smartphone ( 6GB + 64GB 12 MP Qualcomm Snapdragon 660 3500 mAh )",325.99,123,0,true,1306,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_005.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",3,"Xiaomi REDMI NOTE 4X 5.5  4G Smartphone ( 3GB + 32GB 13 MP Qualcomm Snapdragon 625 4100mAh)",139.99,234,true,true,3542,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_006.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",4,"Xiaomi Redmi 4X 5 inch  4G Smartphone ( 3GB + 32GB 13 MP Qualcomm Snapdragon 435 4100mAh)",177.99,2345,0,true,3673,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_007.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",5,"Xiaomi REDMI NOTE 5A Global Version 5.5 inch 4G Smartphone ( 2GB + 16GB 13 MP Qualcomm Snapdragon 425 3080 mAh )",92.99,3346,true,true,961,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_008.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",6,"Xiaomi Redmi Note 4 Global Version 5.1-5.5 5.5 inch 4G Smartphone ( 4GB + 64GB 13 MP Qualcomm Snapdragon 625 4100 mAh )",234,174.99,0,true,2431,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_009.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",7,"Xiaomi Redmi Note 4 Global Version 5.5 inch 4G Smartphone ( 3GB + 32GB 13 MP Qualcomm Snapdragon 625 4100 mAh )",145.99,5678,true,true,965,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_010.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",8,"Xiaomi MI 6 Global Version 5.15  4G Smartphone (6G + 64GB 12 MP + 12 MP Qualcomm Snapdragon 835 3350mAh)",379.99,22235,true,0,1960,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_011.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",9,"Xiaomi MI MIX2 Global Version 5.99 5.6-6.0 inch 4G Smartphone (6GB + 64GB 12 MP Qualcomm Snapdragon 835 3400 mAh)",479.99,2345,true,true,1202,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_012.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",10,"Xiaomi Mi6 5.15 4G Smartphone ( 4GB + 64GB 12 MP + 12 MP Qualcomm Snapdragon 835 3350mAh)",369.99,2334,true,true,102,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_013.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",11,"Xiaomi Mi A1 5.5  4G Smartphone ( 4GB + 32GB 12 MP + 12 MP Qualcomm Snapdragon 625 3080mAh)",178.99,3456,true,0,1192,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_003.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",12,"Xiaomi REDMI NOTE 4X 5.5  4G Smartphone ( 3GB + 32GB 13 MP Qualcomm Snapdragon 625 4100mAh)",139.99,234,true,true,3542,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_006.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",13,"Xiaomi Redmi 4X 5 inch  4G Smartphone ( 3GB + 32GB 13 MP Qualcomm Snapdragon 435 4100mAh)",177.99,2345,true,true,3673,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_007.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",14,"Xiaomi Redmi Note 4 Global Version 5.5 inch 4G Smartphone ( 3GB + 32GB 13 MP Qualcomm Snapdragon 625 4100 mAh )",145.99,5678,true,true,965,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_010.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",15,"Xiaomi MI 6 Global Version 5.15  4G Smartphone (6G + 64GB 12 MP + 12 MP Qualcomm Snapdragon 835 3350mAh)",379.99,22235,true,true,1960,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_011.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",16,"Xiaomi MI MIX2 Global Version 5.99 5.6-6.0 inch 4G Smartphone (6GB + 64GB 12 MP Qualcomm Snapdragon 835 3400 mAh)",479.99,2345,0,true,1202,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_012.jpg");
INSERT INTO light_xiaomi_cellphones VALUES("1",17,"Xiaomi Mi6 5.15 4G Smartphone ( 4GB + 64GB 12 MP + 12 MP Qualcomm Snapdragon 835 3350mAh)",369.99,2334,0,true,102,"/images/Xiaomi_Online/cellphones/XIAOMI_PHONES_013.jpg");

#TABLE structure for light_xiaomi_smartDevices
DROP TABLE IF EXISTS light_xiaomi_smartDevices;
CREATE TABLE light_xiaomi_smartDevices(
tid INT NOT NULL,
pid INT PRIMARY KEY auto_increment,
title VARCHAR(128) NOT NULL,
price DECIMAL(7,2) NOT NULL,
salescount INT NOT NULL,
freeShipping BOOL,
lightningsale BOOL,
favorite INT NOT NULL,
img VARCHAR(128) NOT NULL
);

#records of light_xiaomi_smartDevices
INSERT INTO light_xiaomi_smartDevices VALUES("2",1,"Xiaomi Aqara Window Door Sensor ZigBee Wireless Connection / APP Control / Multi-purpose Smart Home Security Equipment ",7.60,234,0,true,20,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_001.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",2,"Xiaomi Mi Box (MDZ-16-AB) Android6.0 TV Box Cortex-A53 2GB RAM 8GB ROM Quad Core ",69.99,264,0,true,1618,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_002.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",3,"Marble Composite Floor Board APP Control Virtual Wall Smartphone Bluetooth Edge Cleaning",296.89,333,0,true,598,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_003.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",4,"Smart Watch GPS Heart Rate Monitor Water Resistant / Water Proof Distance Tracking Long Standby Compass Information Pedometer Fitnessg",71.09,3533,0,true,5938,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_004.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",5,"Original Xiaomi Smart Mi Air Purifier Smartphone Control Smoke Dust Peculiar Smell Cleaner",126.99,3433,0,true,2334,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_005.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",6,"Xiaomi Mijia Smart LED Desk Lamp WiFi Enabled 4 Scene Modes Dimmable CCT Adjustable Work with Amazon Alexa IFTTT ",38.99,3443,0,true,2134,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_006.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",7,"Original Xiaomi Yeelight Smart Light Strip 2M 16 Million Colors WiFi Intelligent Scenes Work with Amazon Alexa Support Google Home ",27.27,5443,0,true,1134,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_007.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",8,"Xiaomi Mijia 5 in 1 Smart Home Security Kit Multifunction Gateway/Smart Socket/Wireless Switch/Human Body Sensor/Window and Door Sensor",58.99,543,0,true,134,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_008.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",9,"Xiaomi Temperature/Humidity Sensors Real-Time Monitoring Of Temperature/Humidity (Used In Conjunction With The Gateway) ",11.99,1543,0,true,1374,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_009.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",10,"Xiaomi Mi Multi-Function Smart Home 16 Million Color Night Light Remote Control Connect Other Intelligent Device",34.99,5643,0,true,13574,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_010.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",11,"Xiaomi Door and Window enor MIJIA Intelligent Home uite Houehold Alarm",10.99,563,0,true,574,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_011.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",12,"Original Xiaomi Smart Human Body Senor ",14.99,593,0,true,3674,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_012.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",13,"Original XiaoMi Yeelight Colorful smart LED Bulb WIFI Remote Control temperature Romantic lamp",16.99,5934,0,true,364,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_013.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",14,"Xiaomi Mi Cube Controller Zigbee Version Controlled by Six Actions with App for Smart Home Device",14.99,594,0,true,3364,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_014.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",15,"Xiaomi Mi Home iHealth Thermometer Electronic LED Digital Display Body Health Detector",25.99,54,0,true,13364,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_015.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",16,"Original Xiaomi Car Air Cleaner",101.99,534,0,true,134,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_016.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",17,"LCD Display FM Radio 5KM-10KM Xiaomi 5KM-10KM 2 Walkie Talkie Two Way Radio",39.99,5234,0,true,1134,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_017.jpg");
INSERT INTO light_xiaomi_smartDevices VALUES("2",18,"Original Xiaomi Mi WiFi 300M Amplifier 2 Wireless Network Device Mijia Smart App Chinese Version ",39.99,5234,0,true,1134,"/images/Xiaomi_Online/smart_devices/XIAOMI_smartdevices_018.jpg");

#TABLE structure for light_xiaomi_acessories
DROP TABLE IF EXISTS light_xiaomi_acessories;
CREATE TABLE light_xiaomi_acessories(
tid INT NOT NULL,
pid INT PRIMARY KEY auto_increment,
title VARCHAR(128) NOT NULL,
price DECIMAL(7,2) NOT NULL,
salescount INT NOT NULL,
freeShipping BOOL,
lightningsale BOOL,
favorite INT NOT NULL,
img VARCHAR(128) NOT NULL
);

#records of light_xiaomi_acessories
INSERT INTO light_xiaomi_acessories VALUES("3",1,"Xiaomi Square Box 2 Bluetooth Speaker Bluetooth 4.2 3.5mm AUX Bookshelf Speaker White",28.99,234,0,true,20,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_001.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",2,"Original Xiaomi 10000mAh Mobile Power Bank 2 Ultra-thin Portable Charger",19.99,264,0,true,1618,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_002.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",3,"5PCS Mi Robot Vacuum Smart Cleaner Accessories Virtual Wall Side Brushes Filter Rolling Brush and Cover for Xiaomi ",36.99,333,0,true,598,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_003.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",4,"Original Xiaomi Pro 300M 2.4G WiFi Amplifier with 2 Antenna",12.99,3533,0,true,5938,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_004.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",5,"Xiaomi Mi Home Wiha Refinement Screwdriver Set",24.99,3433,0,true,2334,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_005.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",6,"Xiaomi ROIDMI 3S BFQ04RM Dual USB Bluetooth Music Car Charger for Mobile Phone ",17.99,3443,0,true,2134,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_006.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",7,"Xiaomi In Ear Wired Headphones Aluminum Alloy Mobile Phone Earphone with Microphone Headset ",6.92,5443,0,true,1134,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_007.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",8,"Original Xiaomi Mijia Metal Sign Pen MI Pen 0.5mm",5.99,543,0,true,134,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_008.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",9,"Original Xiaomi Robotic Vacuum Cleaner HEPA Filter xiaomi mi Robot Filter",10.99,1543,0,true,1374,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_009.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",10,"Robot Vacuum Wet and Dry Mopping Schedule Cleaning Plan Remote",9.99,5643,0,true,13574,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_010.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",11,"Xiaomi wifi extender repeater 300Mbps 2.4GHz Internal Antenna",9.99,563,0,true,574,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_011.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",12,"Xiaomi YI 1920 x 720 160 Degree Car DVR 2.7 inch Dash Cam",53.99,593,0,true,3674,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_012.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",13,"Original Xiaomi Smart Power Strip Mijia Smart Socket Home Strip Power Strip with Wifi app remote control for TV home kit",17.99,5934,0,true,364,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_013.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",14,"Xiaomi Yeelight Bedside Lamp Bluetooth Control WiFi Connection LED RGBW Touch (Update Version)",69.99,594,0,true,3364,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_014.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",15,"Bluetooth Speaker 2 Bluetooth Speaker Bluetooth 4.1 3.5mm AUX Outdoor Speaker White Black ",39.99,54,0,true,13364,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_015.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",16,"Xiaomi Portable Mouse Optical Bluetooth Dual Mode Connect for Video Game Office Laptop Desktop",19.99,534,0,true,134,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_016.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",17,"Smart Watch Moisture Wicking Water-Repellent Scratch Resistant Anti-Dust Activity Tracker Stopwatch Bluetooth4.0 WIFI Cable ",145.99,5234,0,true,1134,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_017.jpg");
INSERT INTO light_xiaomi_acessories VALUES("3",18,"Original Xiaomi 5000mAh Mobile Power Bank Li-Polymer Battery Portable Charger Ultra-thin",14.99,5234,0,true,1134,"/images/Xiaomi_Online/xiaomi_acessories/xiaomi_acessories_018.jpg");

#TABLE structure for light_xiaomi_cameras
DROP TABLE IF EXISTS light_xiaomi_cameras;
CREATE TABLE light_xiaomi_cameras(
tid INT NOT NULL,
pid INT PRIMARY KEY auto_increment,
title VARCHAR(128) NOT NULL,
price DECIMAL(7,2) NOT NULL,
salescount INT NOT NULL,
freeShipping BOOL,
lightningsale BOOL,
favorite INT NOT NULL,
img VARCHAR(128) NOT NULL
);

#records of light_xiaomi_cameras
INSERT INTO light_xiaomi_cameras VALUES("4",1,"Xiaomi 2.0 MP Indoor with Day Night Prime 32(Day Night Motion Detection Dual Stream Remote Access Plug and play Wi-Fi Protected Setup) IP",26.09,234,0,true,20,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_001.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",2,"Xiaomi Mijia Aqara Smart 1080P 2.0MP IP Camera",29.59,264,0,true,1618,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_002.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",3,"Xiaomi Mijia Smart 720P WiFi IP Camera PTZ Pan-tilt Version",29.74,333,0,true,598,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_003.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",4,"Xiaomi CHUANGMI Smart IP Camera 120 Degree 720P WIFI Mini Home Security Night Vision Monitor",16.67,3533,0,true,5938,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_004.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",5,"Xiaomi Mijia Camera Mini 4K 30fps Action Camera Global Version",115.19,3433,0,true,2334,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_005.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",6,"Xiaomi Mijia 3.5K 16MP 360 Panorama Action Camera",258.19,3443,0,true,2134,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_006.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",7,"Xiaomi Mi Jia 1080p 160 Degree Car DVR Mstar MSC8328P 3 inch Dash Cam G-Sensor Parking Mode Loop recording auto on/off Built-in",65.92,5443,0,true,1134,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_007.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",8,"Xiaomi 2.0 MP Indoor with Day Night 64(Day Night Motion Detection Remote Access Plug and play Wi-Fi Protected Setup) IP Camera",23.24,543,0,true,134,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_008.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",9,"Xiaomi YI 1920 x 720 160 Degree Car DVR 2.7 inch Dash Cam",53.99,1543,0,true,1374,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_009.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",10,"Xiaomi 2.0 MP Indoor with Day Night 64(Day Night Motion Detection Remote Access Plug and play Wi-Fi Protected Setup) IP Camera",37.19,5643,0,true,13574,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_010.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",11,"Xiaomi wifi extender repeater 300Mbps 2.4GHz Internal Antenna",9.99,563,0,true,574,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_011.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",12,"Xiaoyi 155 640*480 60FPS 2GB RAM LITE Waterproof Sport Action Camera 1400mah",191.99,593,0,true,3674,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_012.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",13,"YI YI 1280 x 480 140 Degree Car DVR 6.95 inch Capacitive Screen Dash Camforuniversal GPS Night Vision Parking Mode Built-in speaker",103.99,5934,0,true,364,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_013.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",14,"YI YI 1920 x 1080 140 Degree Car DVR 2.7 inch TFT Dash Camforuniversal Night Vision G-Sensor Built-in speaker WIFI ",94.99,594,0,true,3364,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_014.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",15,"Xiaomi Xiaomi Power Edition Black Stealth 1080p 130 Degree Car DVR 2.7 inch Dash Cam Android APP IOS APP Emergency Lock Built-in speaker",44.99,54,0,true,13364,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_015.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",16,"Xiaomi 2.0 MP Indoor with Day Night 32GB(Day Night Motion Detection Remote Access Plug and play IR-cut) IP Camera",65.99,534,0,true,134,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_016.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",17,"Xiaomi Yi 4k+ Waterproof Sport Camera with155 degree 640*480 2GB RAM Chinese Version",460.79,5234,0,true,1134,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_017.jpg");
INSERT INTO light_xiaomi_cameras VALUES("4",18,"Xiaomi Yi Sport Camera 30fps 16MP Video Recording 155 Degrees Chinese version ",76.99,5234,0,true,1134,"/images/Xiaomi_Online/xiaomi_cameras/xiaomi_cameras_018.jpg");

#TABLE structure for light_xiaomi_laptop
DROP TABLE IF EXISTS light_xiaomi_laptop;
CREATE TABLE light_xiaomi_laptop(
tid INT NOT NULL,
pid INT PRIMARY KEY auto_increment,
title VARCHAR(128) NOT NULL,
price DECIMAL(7,2) NOT NULL,
salescount INT NOT NULL,
freeShipping BOOL,
lightningsale BOOL,
favorite INT NOT NULL,
img VARCHAR(128) NOT NULL
);

#records of light_xiaomi_laptop
INSERT INTO light_xiaomi_laptop VALUES("5",1,"Xiaomi laptop 13.3 inches Intel i5 Dual Core 8GB RAM 256GB SSD hard disk Windows10 Intel HD ",789.00,234,0,true,20,"/images/Xiaomi_Online/xiaomi_laptop/xiaomi_laptop_001.jpg");
INSERT INTO light_xiaomi_laptop VALUES("5",2,"Xiaomi laptop 13.3 inches Intel i7 Dual Core 8GB RAM 256GB SSD hard disk Windows10 MX150 2GB",929.00,264,0,true,1618,"/images/Xiaomi_Online/xiaomi_laptop/xiaomi_laptop_002.jpg");
INSERT INTO light_xiaomi_laptop VALUES("5",3,"Xiaomi laptop 15.6 inch Intel i7 Quad Core 8GB RAM 256GB SSD hard disk Windows10 MX150 2GB ",989.00,333,0,true,598,"/images/Xiaomi_Online/xiaomi_laptop/xiaomi_laptop_003.jpg");
INSERT INTO light_xiaomi_laptop VALUES("5",4,"Xiaomi laptop 12.5 inch Intel CoreM Dual Core 4GB RAM 256GB SSD hard disk Windows10 Intel HD ",659.00,3533,0,true,5938,"/images/Xiaomi_Online/xiaomi_laptop/xiaomi_laptop_004.jpg");
INSERT INTO light_xiaomi_laptop VALUES("5",5,"Xiaomi laptop 12.5 inch Intel CoreM Dual Core 4GB RAM 128GB SSD hard disk Windows10 Intel HD",579.00,3433,0,true,2334,"/images/Xiaomi_Online/xiaomi_laptop/xiaomi_laptop_005.jpg");
INSERT INTO light_xiaomi_laptop VALUES("5",6,"Xiaomi laptop 13.3 inches Intel i5 Dual Core 8GB RAM 256GB SSD hard disk Windows10 MX150 2GB",789.00,3443,0,true,2134,"/images/Xiaomi_Online/xiaomi_laptop/xiaomi_laptop_006.jpg");
INSERT INTO light_xiaomi_laptop VALUES("5",7,"Xiaomi laptop 15.6 inch Intel i5 Quad Core 8GB RAM 256GB SSD hard disk Windows10 MX150 2GB ",839.00,5443,0,true,1134,"/images/Xiaomi_Online/xiaomi_laptop/xiaomi_laptop_007.jpg");
INSERT INTO light_xiaomi_laptop VALUES("5",8,"Xiaomi laptop 15.6 inch Intel i7 Quad Core 16GB RAM 256GB SSD hard disk Windows10 MX150 2GB ",1079,543,0,true,134,"/images/Xiaomi_Online/xiaomi_laptop/xiaomi_laptop_008.jpg");

#TABLE structure for light_index_flash_sales
# badge,1=>group buy,2=>hot,3=>new
DROP TABLE IF EXISTS light_index_flash_sales;
CREATE TABLE light_index_flash_sales(
page TINYINT NOT NULL,
title VARCHAR(128) NOT NULL,
price VARCHAR(36) NOT NULL,
countdown INT NOT NULL,
badge TINYINT NOT NULL,
img1 VARCHAR(128) NOT NULL,
img2 VARCHAR(128) NOT NULL,
img3 VARCHAR(128) NOT NULL,
img4 VARCHAR(128) NOT NULL
);
INSERT INTO light_index_flash_sales VALUES(1,"Speakers Hot Sale","Up to 45% off",172800,1,"images/index/flash_sales1_001.jpg","images/index/flash_sales1_002.jpg","images/index/flash_sales1_003.jpg","images/index/flash_sales1_004.jpg");
INSERT INTO light_index_flash_sales VALUES(1,"Bathroom Hardware Hot Sale","Up to 50% off",172800,2,"images/index/flash_sales1_005.jpg","images/index/flash_sales1_006.jpg","images/index/flash_sales1_007.jpg","images/index/flash_sales1_008.jpg");
INSERT INTO light_index_flash_sales VALUES(1,"Kitchen Faucets New in","Up to 45% off",172800,3,"images/index/flash_sales1_009.jpg","images/index/flash_sales1_010.jpg","images/index/flash_sales1_011.jpg","images/index/flash_sales1_012.jpg");
INSERT INTO light_index_flash_sales VALUES(1,"Men's Clothing Super Deals","USD $ 5.99",172800,1,"images/index/flash_sales1_013.jpg","images/index/flash_sales1_014.jpg","images/index/flash_sales1_015.jpg","images/index/flash_sales1_016.jpg");

INSERT INTO light_index_flash_sales VALUES(2,"Nail Art Design Super Deals","USD $ 5.99",172800,1,"images/index/flash_sales2_001.jpg","images/index/flash_sales2_002.jpg","images/index/flash_sales2_003.jpg","images/index/flash_sales2_004.jpg");
INSERT INTO light_index_flash_sales VALUES(2,"RC Cars Sales","Up to 75% off",172800,2,"images/index/flash_sales2_005.jpg","images/index/flash_sales2_006.jpg","images/index/flash_sales2_007.jpg","images/index/flash_sales2_008.jpg");
INSERT INTO light_index_flash_sales VALUES(2,"Vintage Pocket Watches Sale","Up to 70% off",172800,3,"images/index/flash_sales2_009.jpg","images/index/flash_sales2_010.jpg","images/index/flash_sales2_011.jpg","images/index/flash_sales2_012.jpg");
INSERT INTO light_index_flash_sales VALUES(2,"Fashionable Accessories Super Deals","USD $ 2.99",172800,1,"images/index/flash_sales2_013.jpg","images/index/flash_sales2_014.jpg","images/index/flash_sales2_015.jpg","images/index/flash_sales2_016.jpg");

INSERT INTO light_index_flash_sales VALUES(3,"Fashion Women Tops","USD $ 5.99",172800,1,"images/index/flash_sales3_001.jpg","images/index/flash_sales3_002.jpg","images/index/flash_sales3_003.jpg","images/index/flash_sales3_004.jpg");
INSERT INTO light_index_flash_sales VALUES(3,"Fresh girls dress","Up to 75% off",172800,2,"images/index/flash_sales3_005.jpg","images/index/flash_sales3_006.jpg","images/index/flash_sales3_007.jpg","images/index/flash_sales3_008.jpg");
INSERT INTO light_index_flash_sales VALUES(3,"Fresh Men's Shirts Deal","Up to 70% off",172800,3,"images/index/flash_sales3_009.jpg","images/index/flash_sales3_010.jpg","images/index/flash_sales3_011.jpg","images/index/flash_sales3_012.jpg");
INSERT INTO light_index_flash_sales VALUES(3,"Men's Blazers and Suits","USD $ 12.99",172800,1,"images/index/flash_sales3_013.jpg","images/index/flash_sales3_014.jpg","images/index/flash_sales3_015.jpg","images/index/flash_sales3_016.jpg");

INSERT INTO light_index_flash_sales VALUES(4,"Fresh Sexy Lingerie On sale","USD $ 5.99",172800,1,"images/index/flash_sales4_001.jpg","images/index/flash_sales4_002.jpg","images/index/flash_sales4_003.jpg","images/index/flash_sales4_004.jpg");
INSERT INTO light_index_flash_sales VALUES(4,"New Women's Blazers and Suits on","Up to 75% off",172800,2,"images/index/flash_sales4_005.jpg","images/index/flash_sales4_006.jpg","images/index/flash_sales4_007.jpg","images/index/flash_sales4_008.jpg");
INSERT INTO light_index_flash_sales VALUES(4,"New Women's Tops On","Up to 70% off",172800,3,"images/index/flash_sales4_009.jpg","images/index/flash_sales4_010.jpg","images/index/flash_sales4_011.jpg","images/index/flash_sales4_012.jpg");
INSERT INTO light_index_flash_sales VALUES(4,"Nice Elegant Dresses Big sale","USD $ 12.99",172800,1,"images/index/flash_sales4_013.jpg","images/index/flash_sales4_014.jpg","images/index/flash_sales4_015.jpg","images/index/flash_sales4_016.jpg");

INSERT INTO light_index_flash_sales VALUES(5,"LED Lights New In","USD $ 5.99",172800,1,"images/index/flash_sales5_001.jpg","images/index/flash_sales5_002.jpg","images/index/flash_sales5_003.jpg","images/index/flash_sales5_004.jpg");
INSERT INTO light_index_flash_sales VALUES(5,"Storage and Organization Big Sale","Up to 75% off",172800,2,"images/index/flash_sales5_005.jpg","images/index/flash_sales5_006.jpg","images/index/flash_sales5_007.jpg","images/index/flash_sales5_008.jpg");
INSERT INTO light_index_flash_sales VALUES(5,"Women's Big Sale","USD $ 6.99",172800,3,"images/index/flash_sales5_009.jpg","images/index/flash_sales5_010.jpg","images/index/flash_sales5_011.jpg","images/index/flash_sales5_012.jpg");
INSERT INTO light_index_flash_sales VALUES(5,"Bag Sets Best Sellers","USD $ 12.99",172800,1,"images/index/flash_sales5_013.jpg","images/index/flash_sales5_014.jpg","images/index/flash_sales5_015.jpg","images/index/flash_sales5_016.jpg");