SELECT drivers.ID, case when drivers.firstname like '%a' then "F" 
else "M" 
end 
as 'gender'
FROM assignment3.Drivers;
