-- Total appointments
SELECT COUNT(*) AS total_appointments
FROM appointments;

-- No-show count by department
SELECT department,
       COUNT(*) AS no_show_count
FROM appointments
WHERE appointment_status = 'No-Show'
GROUP BY department
ORDER BY no_show_count DESC;

-- Average waiting time by appointment type
SELECT appointment_type,
       AVG(waiting_time_minutes) AS avg_wait_time
FROM appointments
GROUP BY appointment_type;

-- Appointment count by department
SELECT department,
       COUNT(*) AS total_appointments
FROM appointments
GROUP BY department
ORDER BY total_appointments DESC;


-- Completed appointments by appointment type
SELECT appointment_type,
       COUNT(*) AS completed_appointments
FROM appointments
WHERE appointment_status = 'Completed'
GROUP BY appointment_type
ORDER BY completed_appointments DESC;


SELECT department,
       AVG(waiting_time_minutes) AS avg_waiting_time
FROM appointments
GROUP BY department
ORDER BY avg_waiting_time DESC;
