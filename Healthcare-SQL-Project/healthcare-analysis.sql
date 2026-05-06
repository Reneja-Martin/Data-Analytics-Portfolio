-- Total appointments
SELECT COUNT(*) AS total_appointments
FROM healthcare_appointments;

-- No-show count by department
SELECT department,
       COUNT(*) AS no_show_count
FROM healthcare_appointments
WHERE attendance_status = 'No Show'
GROUP BY department
ORDER BY no_show_count DESC;

-- Average waiting time by appointment type
SELECT appointment_type,
       AVG(waiting_time_minutes) AS avg_wait_time
FROM healthcare_appointments
GROUP BY appointment_type;

-- Appointment count by department
SELECT department,
       COUNT(*) AS total_appointments
FROM healthcare_appointments
GROUP BY department
ORDER BY total_appointments DESC;
