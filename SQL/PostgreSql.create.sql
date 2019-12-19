



CREATE TABLE Booking (

 primaryKey UUID NOT NULL,

 DateStart TIMESTAMP(3) NULL,

 DateEnd TIMESTAMP(3) NULL,

 Recreation_m0 UUID NOT NULL,

 Client_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE RecreationEmployee (

 primaryKey UUID NOT NULL,

 RecreationAdmin BOOLEAN NULL,

 User_m0 UUID NOT NULL,

 Recreation_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Recreation (

 primaryKey UUID NOT NULL,

 Phone VARCHAR(255) NULL,

 Address VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationUser (

 primaryKey UUID NOT NULL,

 Phone VARCHAR(255) NULL,

 Email VARCHAR(255) NULL,

 IsAdmin BOOLEAN NULL,

 Name VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));


CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE Booking ADD CONSTRAINT FK3fd7f6173e4a49c7b7eff25517be6166 FOREIGN KEY (Recreation_m0) REFERENCES Recreation; 
CREATE INDEX Indexbbefc475886b6024b775675a0bb178673a72d953 on Booking (Recreation_m0); 

 ALTER TABLE Booking ADD CONSTRAINT FK9fbd2c8502204e4d8d8143a4be3974ed FOREIGN KEY (Client_m0) REFERENCES ApplicationUser; 
CREATE INDEX Index101cc41ca857f1939b4841ec79ee7e64758f1cbf on Booking (Client_m0); 

 ALTER TABLE RecreationEmployee ADD CONSTRAINT FKed7eeeb4da104362bfaec7346d11396c FOREIGN KEY (User_m0) REFERENCES ApplicationUser; 
CREATE INDEX Indexacf03fcb2f676a616d6230dc86280bb5e22a5fd8 on RecreationEmployee (User_m0); 

 ALTER TABLE RecreationEmployee ADD CONSTRAINT FK7826ebb678a248bfaffb2d5bb2d77c2b FOREIGN KEY (Recreation_m0) REFERENCES Recreation; 
CREATE INDEX Index65ad752c61f57d24a0b82adad494d474c250574f on RecreationEmployee (Recreation_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK97210daaabf84dda864af08befe6272b FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK56c8b31384ed42f896303d7ded567e55 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK3ff79c0b424a4804af9f72e47bdae85f FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

