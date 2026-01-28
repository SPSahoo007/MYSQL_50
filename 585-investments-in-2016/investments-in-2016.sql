SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM 
(
    select *, count(*) over (partition by tiv_2015) as duplicate_2015,
    count(*) over (partition by lat,lon) as cordinate
    from Insurance
) as i
WHERE 
duplicate_2015 > 1
and cordinate =1