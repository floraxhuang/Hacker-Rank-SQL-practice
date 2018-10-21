/*
You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of  from your result.
*/

SELECT f_s.hacker_id, h.name, SUM(f_s.score) as total
FROM
(SELECT hacker_id, challenge_id, max(score) as score
FROM Submissions GROUP BY hacker_id, challenge_id) as f_s
JOIN Hackers as h ON f_s.hacker_id = h.hacker_id
GROUP BY f_s.hacker_id, h.name
Having total>0
ORDER BY total DESC, f_s.hacker_id ASC;
