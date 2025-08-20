CREATE TABLE hospital(
Hospital_Name VARCHAR(100),
Location VARCHAR(100),
Department	VARCHAR(100),
Doctors_Count INT,
Patients_Count	INT,
Admission_Date DATE,
Discharge_Date DATE,
Medical_Expenses NUMERIC(10,2)
);

-- steps to add csv file
--1 GO TO THE TABLE RIGHT CICK AND SELECT IMPORT/EXPORT
--2 SEELCT THE CSV FILE  AND CHOOSE HEADER IN SECOND DIALOG BOX
--3 PRESS ENTER 
--4 BACK TO QUEREY TOOL AND RUN THIS COMMAND
-- SELECT * FROM table_name;
SELECT * FROM hospital;


