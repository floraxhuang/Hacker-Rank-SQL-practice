/*
Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
*/

SELECT W.id, WP.age, M.coins_needed, M.power FROM
(SELECT code, min(coins_needed) as coins_needed, power FROM Wands GROUP BY code, power) as M JOIN Wands as W on M.code = W.code and M.coins_needed = W.coins_needed and M.power=W.power
JOIN Wands_Property as WP on W.code = WP.code
where WP.is_evil = 0
ORDER BY M.power DESC, WP.age DESC;
