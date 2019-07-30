SELECT 
    lines.name, nboftrips, time, price
FROM
    assignment3.lines
        JOIN
    prices ON lines.type = prices.linetype
WHERE
    lines.name in ('35','102','M41','24B')
order by lines.name;
