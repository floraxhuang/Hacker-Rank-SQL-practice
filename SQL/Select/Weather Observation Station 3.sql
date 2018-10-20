/*
Query a list of CITY names from STATION with even ID numbers only.
You may print the results in any order, but must exclude duplicates from your answer.
Input Format
The STATION table is described as follows:
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | NUMBER     |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMBER     |
| LONG_W      | NUMBER     |
+-------------+------------+
where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

/*
Enter your query here.
*/
SELECT DISTINCT CITY FROM STATION WHERE ID%2=0 ; 
