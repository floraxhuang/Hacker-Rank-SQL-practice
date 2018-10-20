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
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

SELECT NAME FROM CITY
WHERE COUNTRYCODE = "JPN";
