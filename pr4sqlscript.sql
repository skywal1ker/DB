CREATE TABLE Patient Basic Information(
Patient ID DECIMAL(15) PRIMARY KEY,
Patient_First_Name VARCHAR (15) NOT NULL,
Patient Mode_Name VARCHAR(15),
Patient_Last Name VARCHAR(15) NOT NULL,
Patient Gender VARCHAR (10) NOT NULL,
Patient DOB DATE. NOT NULL,
Patient_Email Address VARCHAR(20) NOT NULL,
Patient Mobile Number DECIMAL (20) NOT NULL,
Patient_Current_Address VARCHAR(20) NOT NULL);

CREATE TABLE Doctor_Basic_Information(
Doctor_ID DECIMAL (15) PRIMARY KEY,
Doctor Tittle VARCHAR (20) NOT NULL,
Doctor_First Name VARCHAR (15) NOT NULL,
Doctor _Mod le_Name, VARCHAR (15) ,
Doctor_Last_Name VARCHAR (15) NOT NULL,
Doctor_Gender VARCHAR (10) NOT NULL,
Department VARCHAR (20) NOT NULL,
Doctor_Email_Address VARCHAR (20) NOT NULL);
CREATE TABLE Calender(
Patient_Appointment DATE PRIMARY KEY,
Meeting VARCHAR(20) NOT NULL,
work_report VARCHAR (20) NOT NULL);

CREATE TABLE Bill information(
Bill ID DECIMAL (20) PRIMARY KEY,
Diagnose_ID DECIMAL (12) NOT NULL,
Insurance Cover VARCHAR (20) NOT NULL,
Membership_Cover VARCHAR (20) NOT NULL,
Payment Options DECIMAL (20) NOT NULL,
Payment _Amount DECIMAL (20) NOT NULL
Receipt_print VARCHAR (20) NOT NULL,
FOREIGN KEY (Diagnose_ID) REFERENCES Medical Record (Diagnose ID));

CREATE TABLE Bill information(
Bill ID DECIMAL (20) PRIMARY KEY
Diagnose ID DECIMAL (12) NOT NULL,
Insurance Cover VARCHAR (20) NOT NULL,
Membership_Cover VARCHAR (20) NOT NULL,
Payment_Options DECIMAL (20) NOT NULL,
Payment _Ammount DECIMAL (20) NOT NULL,
Receipt print VARCHAR(20) NOT NULL,
FOREIGN KEY (Diagnose_ID) REFERENCES Medical Record (Diagnose_ID));

CREATE TABLE Patient History(
Patient Name VARCHAR(20) PRIMARY KEY,
Patient ID DECIMAL (15) NOT NULL,
Diagnose ID DECIMAL (12) NOT NULL,
Details VARCHAR(20) NOT NULL,
Treatment Date DATE NOT NULL,
Subsequent Vist Date DATE NOT NULL,
FOREIGN KEY (Patient _ID) REFERENCES Patient_Basic_Information(Patient_ID),
FOREIGN KEY (Diagnose ID) REFERENCES Medical_Record (Diagnose_ID));