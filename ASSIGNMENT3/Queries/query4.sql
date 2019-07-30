select route.bus, sum(nbofstops) as 'total stops'
from assignment3.route
group by route.bus;