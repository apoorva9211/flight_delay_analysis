USE flight_project;
SHOW TABLES;
DESCRIBE flights;
SELECT * FROM flights LIMIT 10;
SELECT airline, COUNT(*) AS num_flights
FROM flights
GROUP BY airline;
SELECT COUNT(*) AS delayed_flights
FROM flights
WHERE status ='Delayed';
SELECT airline ,SUM(delay_minutes) AS total_delay_minutes
FROM flights
GROUP BY airline
ORDER BY total_delay_minutes DESC;
