CAR (serial_nr, model, price, manufacturer)  
ENHANCEMENT (serial_nr -> CAR(serial_nr), name, price)  
SALESPERSON (s_id, name, phone_nr)  
CARSALE (s_id -> SALESPERSON(s_id), serial_nr -> CAR(serial_nr), date, final_price)  
￼Not on RHS:  
Semester, Year  
Can't determine all non-essential attributes  
Candidate Keys: {Semester, Year, CourseNo, SecNo}  
{Semester, Year, RoomNo, Day}  
{
 
SELECT p.name  
FROM parliamentarian p  
JOIN member m ON p.p_id = m.p_id  
JOIN institution i ON m.i_id = i.i_id  
JOIN type t ON i.t_id = t.t_id AND t.name = 'EU party'
 
SELECT ideology, COUNT(*) AS number  
FROM institution  
GROUP BY ideology
 
SELECT p.p_id  
FROM parlimentarian p  
JOIN speech s ON p.p_id = s.p_id  
WHERE s.language != 'dutch'
 
SELECT p.name, avg(s.length)  
FROM parlimentarian p  
JOIN speech s ON p.p_id = s.p_id  
JOIN member m ON p.p_id = m.p_id  
WHERE m.from_date >= '1-1-2018'  
GROUP BY p.name
 
OperatorID -> OperatorName  
TrainID -> Train Company