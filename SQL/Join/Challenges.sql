/*
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
*/

SELECT C.hacker_id, H.name, COUNT(C.challenge_id) as challenges_created
FROM Challenges as C JOIN Hackers as H on C.hacker_id = H.hacker_id
GROUP BY C.hacker_id, H.name
Having 
challenges_created = (SELECT MAX(c1max.cnt) FROM (SELECT COUNT(challenge_id) as cnt FROM Challenges GROUP BY hacker_id) as c1max)
OR
challenges_created in (SELECT c2cnt.cnt2 FROM (SELECT COUNT(*) as cnt2 FROM Challenges GROUP BY hacker_id) as c2cnt GROUP BY c2cnt.cnt2 HAVING COUNT(c2cnt.cnt2)=1)
order by challenges_created DESC, C.hacker_id;
