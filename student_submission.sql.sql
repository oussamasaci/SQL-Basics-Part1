/* We are using SQL Server. We copy and paste the command and run the query. Three tables were created with exactly the number of rows described in the task: 25, 28, and 25 rows each. */

/* Phase 0, Task 2
Two text columns = inspector_first_name, inspector_last_name from trailpeak_inspections;
Two numeric columns = inspection_id, condition_score from trailpeak_inspections;
One date column = inspection_date from trailpeak_inspections;
One boolean column = follow_up_required from trailpeak_inspections; */

-- Phase one, task one: exploration done and SELECT has been omitted frmo this final file.

-- Q1.2
SELECT 
	first_name,
	last_name,
	department,
	annual_salary_dzd 
FROM trailpeak_staff;

-- Q1.3
SELECT 
	first_name,
	last_name,
	department AS dept,
	annual_salary_dzd AS annual_pay_dzd

FROM trailpeak_staff;

-- Q1.4
SELECT
	gear_item,
	branch_name,
	condition_score AS "Condition Score"
FROM trailpeak_inspections;

-- Q2.1
SELECT 
	CONCAT(first_name, ' ',last_name) AS full_name,
	department
FROM trailpeak_staff

-- Q2.2:
SELECT 
	CONCAT(first_name, ' ',last_name) AS full_name,
	department,
	annual_salary_dzd,
	(annual_salary_dzd/12.0, 2) * 1.00 AS monthly_pay

FROM trailpeak_staff

-- Q2.3
SELECT 
	first_name,
	last_name,
	annual_salary_dzd,
	annual_salary_dzd * 0.10 AS bonus,
	annual_salary_dzd + (annual_salary_dzd*0.10) AS total_annual_pay_dzd
FROM trailpeak_staff

-- Q2.4
SELECT 
	staff_id,
	annual_salary_dzd,
	annual_salary_dzd - 120000 AS total_after_deduction
FROM trailpeak_staff

-- Q3.1
SELECT
	rental_id,
	gear_item,
	quantity,
	daily_rate_dzd,
	rental_days,
	daily_rate_dzd * quantity * rental_days AS estimated_charge_dzd 
FROM trailpeak_rentals;

-- Q3.2
SELECT
	rental_id,
	customer_first_name,
	customer_last_name,
	gear_item,
	daily_rate_dzd * quantity * rental_days AS estimated_charge_dzd
FROM trailpeak_rentals
WHERE daily_rate_dzd * quantity * rental_days > 10000

-- Q3.3
SELECT
	rental_id,
	gear_item,
	gear_category,
	rental_date,
	rental_status
FROM trailpeak_rentals
WHERE gear_category = 'Camping'

-- Q3.4a
SELECT
	DISTINCT gear_category 
FROM trailpeak_rentals

-- Q3.4b
SELECT
	DISTINCT customer_first_name, customer_last_name, gear_item 
FROM trailpeak_rentals
/* We only see the combinations once even if it appears multiple times in the table */

-- Q4.1
SELECT 
	inspection_date,
	risk_category 	
FROM trailpeak_inspections
WHERE gear_item = 'Trailblazer 3-Person Tent' AND condition_score < 95

-- Q4.2
SELECT 
	gear_item,
	inspection_date,
	condition_score,
	risk_category,
	inspection_status
FROM trailpeak_inspections
WHERE follow_up_required = 1

-- Q4.3
SELECT 
	DISTINCT risk_category
FROM trailpeak_inspections

-- Q5.1
SELECT 
	staff_id,
	first_name,
	department,
	annual_salary_dzd,
	joining_date
FROM trailpeak_staff
WHERE department = 'Workshop'

-- Q5.2
SELECT
staff_id,
	first_name,
	department,
	annual_salary_dzd,
	joining_date
FROM trailpeak_staff
WHERE department <> 'Admin'

-- Q5.3
SELECT
staff_id,
	first_name,
	department,
	annual_salary_dzd,
	joining_date
FROM trailpeak_staff
WHERE annual_salary_dzd > 2800000

-- Q5.4
SELECT
staff_id,
	first_name,
	department,
	annual_salary_dzd,
	joining_date
FROM trailpeak_staff
WHERE annual_salary_dzd < 1600000

-- Q5.5
SELECT
staff_id,
	first_name,
	department,
	annual_salary_dzd,
	joining_date
FROM trailpeak_staff
WHERE annual_salary_dzd >= 2900000

-- Q5.6
SELECT
staff_id,
	first_name,
	department,
	annual_salary_dzd,
	joining_date
FROM trailpeak_staff
WHERE annual_salary_dzd <= 1900000

-- Q5.7
SELECT
staff_id,
	first_name,
	department,
	annual_salary_dzd,
	joining_date
FROM trailpeak_staff
WHERE joining_date > '2024-01-01'

-- Q6.1
SELECT
    first_name,
    last_name,
    department,
    annual_salary_dzd,
    joining_date
FROM trailpeak_staff
WHERE department = 'Admin'
  AND annual_salary_dzd >= 2000000
  AND joining_date > '2022-01-01';

-- Q6.2:
SELECT 
	*
FROM trailpeak_staff
WHERE annual_salary_dzd <= 1400000 OR annual_salary_dzd >= 3000000


-- Q6.3
SELECT 
	staff_id,
	first_name,
	last_name,
	department
FROM trailpeak_staff
WHERE NOT department IN('Admin', 'Human Resources')


-- Q6.4
SELECT 
	first_name,
	last_name,
	department,
	annual_salary_dzd 
FROM trailpeak_staff
WHERE annual_salary_dzd > 2700000 AND (department = 'Admin' or department = 'Human Resources')


-- Q6.5
SELECT 
	rental_id,
	gear_item,
	rental_date,
	rental_status,
	branch_name
FROM trailpeak_rentals
WHERE (rental_status = 'Active' OR rental_status = 'Overdue') AND rental_date >= '2026-10-01'