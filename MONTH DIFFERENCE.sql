SELECT s1.id, s1.date as date, 
(((round((s1.date/100),0) - round((MIN(s2.date)/100),0))* 12) + (s1.date%100 - MIN(s2.date)%100)) as months_diff
FROM sales AS s1

JOIN sales AS s2 ON s1.id = s2.id
GROUP BY s1.id, s1.date;