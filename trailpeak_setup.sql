-- TrailPeak Outdoor Gear Rentals: SQL Foundations 1 practice database
-- Dialect: PostgreSQL
-- CAUTION: this setup script drops and recreates the three practice tables below.
-- Run it only in your practice database, not in a database containing your own work.
-- The data is synthetic. Amounts are in Algerian dinars (DZD).

DROP TABLE IF EXISTS trailpeak_staff;
DROP TABLE IF EXISTS trailpeak_rentals;
DROP TABLE IF EXISTS trailpeak_inspections;

CREATE TABLE trailpeak_staff (
    staff_id INTEGER PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    department VARCHAR(40) NOT NULL,
    job_title VARCHAR(70) NOT NULL,
    annual_salary_dzd INTEGER NOT NULL,
    joining_date DATE NOT NULL,
    branch_name VARCHAR(30) NOT NULL,
    employment_status VARCHAR(20) NOT NULL,
    active_flag BOOLEAN NOT NULL
);

CREATE TABLE trailpeak_rentals (
    rental_id INTEGER PRIMARY KEY,
    customer_first_name VARCHAR(40) NOT NULL,
    customer_last_name VARCHAR(40) NOT NULL,
    gear_category VARCHAR(30) NOT NULL,
    gear_item VARCHAR(70) NOT NULL,
    quantity INTEGER NOT NULL,
    daily_rate_dzd DECIMAL(10,2) NOT NULL,
    rental_days INTEGER NOT NULL,
    rental_date DATE NOT NULL,
    rental_status VARCHAR(20) NOT NULL,
    branch_name VARCHAR(30) NOT NULL
);

CREATE TABLE trailpeak_inspections (
    inspection_id INTEGER PRIMARY KEY,
    gear_item VARCHAR(70) NOT NULL,
    branch_name VARCHAR(30) NOT NULL,
    inspection_date DATE NOT NULL,
    inspector_first_name VARCHAR(40) NOT NULL,
    inspector_last_name VARCHAR(40) NOT NULL,
    condition_score INTEGER NOT NULL,
    risk_category VARCHAR(20) NOT NULL,
    inspection_status VARCHAR(30) NOT NULL,
    follow_up_required BOOLEAN NOT NULL
);

INSERT INTO trailpeak_staff VALUES
(1, 'Maya', 'Chen', 'Admin', 'Operations Manager', 3200000, '2023-05-16', 'Oran', 'Active', TRUE),
(2, 'Nadia', 'Bell', 'Human Resources', 'HR Manager', 3450000, '2021-02-10', 'Algiers', 'Active', TRUE),
(3, 'Yusuf', 'Karim', 'Admin', 'Finance Coordinator', 2100000, '2022-09-01', 'Oran', 'Active', TRUE),
(4, 'Lina', 'Haddad', 'Human Resources', 'HR Analyst', 2850000, '2024-03-11', 'Constantine', 'Active', TRUE),
(5, 'Omar', 'Saidi', 'Workshop', 'Senior Technician', 2650000, '2020-07-19', 'Oran', 'Active', TRUE),
(6, 'Sara', 'Benali', 'Sales', 'Rental Advisor', 1650000, '2025-01-08', 'Tlemcen', 'Active', TRUE),
(7, 'Karim', 'Toumi', 'Operations', 'Fleet Lead', 3050000, '2022-04-25', 'Algiers', 'Active', TRUE),
(8, 'Amel', 'Boudiaf', 'Admin', 'Procurement Manager', 3000000, '2025-06-02', 'Constantine', 'Active', TRUE),
(9, 'Idris', 'Mansour', 'Human Resources', 'Recruitment Specialist', 2350000, '2021-11-03', 'Tlemcen', 'Active', TRUE),
(10, 'Leila', 'Rahmani', 'Workshop', 'Repair Technician', 1900000, '2023-09-14', 'Oran', 'Active', TRUE),
(11, 'Samir', 'Kaci', 'Sales', 'Branch Supervisor', 2750000, '2022-01-13', 'Algiers', 'Active', TRUE),
(12, 'Ines', 'Cherif', 'Operations', 'Logistics Planner', 2480000, '2024-02-18', 'Constantine', 'Active', TRUE),
(13, 'Rayan', 'Bouzid', 'Workshop', 'Service Manager', 3150000, '2019-12-01', 'Oran', 'Active', TRUE),
(14, 'Yasmine', 'Merabet', 'Admin', 'Office Coordinator', 1850000, '2025-10-20', 'Tlemcen', 'Active', TRUE),
(15, 'Walid', 'Fares', 'Sales', 'Sales Lead', 3100000, '2020-05-07', 'Algiers', 'Active', TRUE),
(16, 'Nour', 'Ait Ali', 'Operations', 'Branch Coordinator', 1550000, '2026-01-12', 'Tlemcen', 'Active', TRUE),
(17, 'Imane', 'Belkacem', 'Human Resources', 'HR Assistant', 1400000, '2024-08-07', 'Oran', 'Active', TRUE),
(18, 'Adel', 'Ziani', 'Workshop', 'Senior Mechanic', 2950000, '2021-06-23', 'Constantine', 'Active', TRUE),
(19, 'Meriem', 'Ouali', 'Admin', 'Finance Analyst', 2900000, '2023-03-16', 'Algiers', 'Active', TRUE),
(20, 'Tarek', 'Seddik', 'Operations', 'Fleet Coordinator', 1950000, '2022-12-05', 'Oran', 'Active', FALSE),
(21, 'Farah', 'Meziane', 'Sales', 'Sales Associate', 1250000, '2026-02-19', 'Constantine', 'Active', TRUE),
(22, 'Bilal', 'Hadji', 'Workshop', 'Apprentice Technician', 1100000, '2025-09-01', 'Tlemcen', 'Active', TRUE),
(23, 'Dounia', 'Gacem', 'Human Resources', 'People Operations Manager', 3300000, '2020-08-27', 'Algiers', 'Active', TRUE),
(24, 'Sofiane', 'Bensaid', 'Operations', 'Regional Operations Lead', 3500000, '2018-04-04', 'Oran', 'Active', TRUE),
(25, 'Khadija', 'Saou', 'Workshop', 'Inventory Controller', 2050000, '2024-06-15', 'Constantine', 'Active', TRUE);

INSERT INTO trailpeak_rentals VALUES
(1001, 'Lina', 'Amrani', 'Camping', 'Trailblazer 3-Person Tent', 1, 2500.0, 3, '2026-09-02', 'Returned', 'Oran'),
(1002, 'Yacine', 'Haddad', 'Climbing', 'Summit Pro Harness', 2, 900.0, 2, '2026-09-05', 'Overdue', 'Algiers'),
(1003, 'Samia', 'Merabet', 'Hiking', 'Alpine Trekking Poles', 1, 700.0, 4, '2026-09-07', 'Returned', 'Constantine'),
(1004, 'Lina', 'Amrani', 'Camping', 'Trailblazer 3-Person Tent', 1, 2500.0, 2, '2026-09-18', 'Returned', 'Oran'),
(1005, 'Omar', 'Zeroual', 'Cycling', 'Gravel Bike', 1, 4200.0, 2, '2026-09-11', 'Active', 'Algiers'),
(1006, 'Nour', 'Benaissa', 'Winter Sports', 'Glacier Sleeping Bag', 2, 1200.0, 3, '2026-09-12', 'Returned', 'Tlemcen'),
(1007, 'Adam', 'Khellaf', 'Water Sports', 'Touring Kayak', 1, 3500.0, 1, '2026-09-13', 'Returned', 'Oran'),
(1008, 'Yasmine', 'Saadi', 'Camping', 'Family Basecamp Tent', 1, 3800.0, 3, '2026-09-14', 'Overdue', 'Constantine'),
(1009, 'Mehdi', 'Kaci', 'Climbing', 'Lightweight Climbing Rope', 1, 1500.0, 2, '2026-09-15', 'Returned', 'Tlemcen'),
(1010, 'Sara', 'Cherif', 'Hiking', 'GPS Navigator', 1, 1800.0, 5, '2026-09-16', 'Active', 'Algiers'),
(1011, 'Riad', 'Bouzid', 'Cycling', 'Gravel Bike', 2, 4200.0, 1, '2026-09-17', 'Returned', 'Algiers'),
(1012, 'Yacine', 'Haddad', 'Climbing', 'Summit Pro Harness', 1, 900.0, 4, '2026-09-20', 'Returned', 'Algiers'),
(1013, 'Amira', 'Belkacem', 'Climbing ', 'Summit Pro Harness', 1, 900.0, 2, '2026-09-20', 'Active', 'Oran'),
(1014, 'Anis', 'Mansouri', 'Camping', 'Compact Camp Stove', 2, 800.0, 3, '2026-09-21', 'Returned', 'Tlemcen'),
(1015, 'Meriem', 'Ouali', 'Hiking', 'Hydration Pack', 1, 1100.0, 6, '2026-09-22', 'Overdue', 'Constantine'),
(1016, 'Ilyes', 'Rahmani', 'Water Sports', 'Inflatable Paddleboard', 1, 3200.0, 2, '2026-09-23', 'Active', 'Oran'),
(1017, 'Hiba', 'Kaci', 'Winter Sports', 'All-Mountain Skis', 2, 2700.0, 2, '2026-09-24', 'Returned', 'Algiers'),
(1018, 'Khaled', 'Saidi', 'Cycling', 'City Hybrid Bike', 1, 2800.0, 4, '2026-09-25', 'Returned', 'Tlemcen'),
(1019, 'Lina', 'Amrani', 'Hiking', 'GPS Navigator', 1, 1800.0, 2, '2026-10-01', 'Returned', 'Oran'),
(1020, 'Farid', 'Boudiaf', 'Camping', 'Trailblazer 3-Person Tent', 2, 2500.0, 2, '2026-10-02', 'Active', 'Constantine'),
(1021, 'Sonia', 'Toumi', 'Climbing', 'Climbing Helmet', 3, 650.0, 3, '2026-10-03', 'Returned', 'Algiers'),
(1022, 'Nabil', 'Cherif', 'Water Sports', 'Touring Kayak', 2, 3500.0, 2, '2026-10-04', 'Overdue', 'Oran'),
(1023, 'Dalia', 'Zeroual', 'Cycling', 'City Hybrid Bike', 1, 2800.0, 1, '2026-10-05', 'Cancelled', 'Tlemcen'),
(1024, 'Amina', 'Hadji', 'Hiking', 'Alpine Trekking Poles', 2, 700.0, 5, '2026-10-06', 'Returned', 'Constantine'),
(1025, 'Riad', 'Bouzid', 'Cycling', 'Gravel Bike', 1, 4200.0, 3, '2026-10-07', 'Active', 'Algiers'),
(1026, 'Nour', 'Benaissa', 'Winter Sports', 'Glacier Sleeping Bag', 1, 1200.0, 2, '2026-10-08', 'Returned', 'Tlemcen'),
(1027, 'Sami', 'Gacem', 'Camping', 'Compact Camp Stove', 1, 800.0, 1, '2026-10-09', 'Returned', 'Oran'),
(1028, 'Ines', 'Cherif', 'Hiking', 'Hydration Pack', 2, 1100.0, 4, '2026-10-10', 'Overdue', 'Constantine');

INSERT INTO trailpeak_inspections VALUES
(5001, 'Trailblazer 3-Person Tent', 'Oran', '2026-08-20', 'Omar', 'Saidi', 98, 'Low', 'Pass', FALSE),
(5002, 'Summit Pro Harness', 'Algiers', '2026-08-21', 'Adel', 'Ziani', 91, 'Moderate', 'Monitor', TRUE),
(5003, 'Touring Kayak', 'Oran', '2026-08-22', 'Khadija', 'Saou', 87, 'High', 'Repair Required', TRUE),
(5004, 'Gravel Bike', 'Algiers', '2026-08-23', 'Rayan', 'Bouzid', 96, 'Low', 'Pass', FALSE),
(5005, 'Family Basecamp Tent', 'Constantine', '2026-08-24', 'Omar', 'Saidi', 89, 'Moderate', 'Monitor', TRUE),
(5006, 'Trailblazer 3-Person Tent', 'Oran', '2026-09-01', 'Leila', 'Rahmani', 93, 'Moderate', 'Monitor', TRUE),
(5007, 'GPS Navigator', 'Algiers', '2026-09-02', 'Khadija', 'Saou', 84, 'High', 'Repair Required', TRUE),
(5008, 'Glacier Sleeping Bag', 'Tlemcen', '2026-09-03', 'Omar', 'Saidi', 99, 'Low', 'Pass', FALSE),
(5009, 'Inflatable Paddleboard', 'Oran', '2026-09-04', 'Adel', 'Ziani', 76, 'Critical', 'Remove from Service', TRUE),
(5010, 'City Hybrid Bike', 'Tlemcen', '2026-09-05', 'Rayan', 'Bouzid', 90, 'Moderate', 'Monitor', TRUE),
(5011, 'Lightweight Climbing Rope', 'Tlemcen', '2026-09-06', 'Khadija', 'Saou', 94, 'Moderate', 'Monitor', TRUE),
(5012, 'Compact Camp Stove', 'Oran', '2026-09-07', 'Leila', 'Rahmani', 82, 'High', 'Repair Required', TRUE),
(5013, 'Summit Pro Harness', 'Algiers', '2026-09-10', 'Adel', 'Ziani', 97, 'Low', 'Pass', FALSE),
(5014, 'Trailblazer 3-Person Tent', 'Constantine', '2026-09-11', 'Omar', 'Saidi', 88, 'High', 'Repair Required', TRUE),
(5015, 'All-Mountain Skis', 'Algiers', '2026-09-12', 'Rayan', 'Bouzid', 92, 'Moderate', 'Monitor', TRUE),
(5016, 'Hydration Pack', 'Constantine', '2026-09-13', 'Khadija', 'Saou', 100, 'Low', 'Pass', FALSE),
(5017, 'Touring Kayak', 'Oran', '2026-09-14', 'Adel', 'Ziani', 93, 'Moderate', 'Monitor', TRUE),
(5018, 'Gravel Bike', 'Algiers', '2026-09-15', 'Leila', 'Rahmani', 79, 'Critical', 'Remove from Service', TRUE),
(5019, 'Family Basecamp Tent', 'Constantine', '2026-09-16', 'Omar', 'Saidi', 95, 'Low', 'Pass', FALSE),
(5020, 'Climbing Helmet', 'Algiers', '2026-09-17', 'Khadija', 'Saou', 86, 'High', 'Repair Required', TRUE),
(5021, 'Trailblazer 3-Person Tent', 'Oran', '2026-09-22', 'Leila', 'Rahmani', 96, 'Low', 'Pass', FALSE),
(5022, 'Compact Camp Stove', 'Oran', '2026-09-23', 'Adel', 'Ziani', 91, 'Moderate', 'Monitor', TRUE),
(5023, 'City Hybrid Bike', 'Tlemcen', '2026-09-24', 'Rayan', 'Bouzid', 97, 'Low', 'Pass', FALSE),
(5024, 'Touring Kayak', 'Oran', '2026-10-01', 'Khadija', 'Saou', 89, 'High', 'Repair Required', TRUE),
(5025, 'Lightweight Climbing Rope', 'Tlemcen', '2026-10-02', 'Leila', 'Rahmani', 98, 'Low', 'Pass', FALSE);

-- End of setup script. The assignment asks you to write your own SELECT queries.
-- No joins, GROUP BY, aggregate functions, or subqueries are needed for this lesson.
