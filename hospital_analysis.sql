
-- Total Number of Patients 
--	1	find the total number of patients across all hospitals.

SELECT SUM(patients_count) AS total_patients
FROM hospital;

--	2 Retrieve the average count of doctors available in each hospital.



SELECT AVG(doctors_count) FROM hospital;

--	3
SELECT  hospital_name, location,patients_count AS highest_patients FROM hospital
ORDER BY patients_count DESC LIMIT 3;

--4

SELECT hospital_name, MAX(medical_expenses)AS highest_medical_exp
FROM hospital
GROUP BY hospital_name
ORDER BY highest_medical_exp DESC lIMIT 3;

--	5 Calculate the average medical expenses per day for each hospital. 

	SELECT hospital_name,
	AVG(medical_expenses/(discharge_date-admission_date))
	FROM hospital
	GROUP BY hospital_name;
	
	
--	6:-


SELECT  discharge_date-admission_date AS longest_stay_patient
FROM hospital
ORDER BY longest_stay_patient DESC LIMIT 1;


--7) COUNT TOTAL NUMBER OF PATIENT TREATED IN EACH CITY

SELECT location,SUM(patients_count)as Treated_patients
FROM hospital
GROUP BY location;

--8	Calculate the average number of days patients spend in each department. 
SELECT department ,AVG(	discharge_date-admission_date)AS patients_in_depart
FROM hospital
GROUP BY department;


--	9)  Identify the Department with the Lowest Number of Patients 

SELECT department, SUM(patients_count) AS total_patient
FROM hospital
GROUP BY department 
order by total_patient LIMIT 2;


--	10) Monthly Medical Expenses Report 
-- Group the data by month
--and calculate the total medical expenses for each month. 
SELECT * FROM hospital;

SELECT 
    DATE_TRUNC('month', admission_date) AS month,
    SUM(medical_expenses) AS total_expenses
FROM hospital
GROUP BY DATE_TRUNC('month', admission_date)
ORDER BY month;














