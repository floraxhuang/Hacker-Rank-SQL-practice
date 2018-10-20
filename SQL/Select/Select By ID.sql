/*
+-------------+--------------+
| Field       | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| Name        | varchar2(17) |
| CountryCode | varchar2(3)  |
| District    | varchar2(20) |
| Population  | NUMBER       |
+-------------+--------------+
Query all columns for a city in CITY with the ID 1661.
*/

SELECT * FROM CITY
WHERE ID = 1661;
