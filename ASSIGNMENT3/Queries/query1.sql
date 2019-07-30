select lines.name, lines.type, route.direction, route.start, route.stop, neighborhood.name
from ( assignment3.lines join route on lines.name = route.bus) join neighborhood on lines.name = neighborhood.busline
where neighborhood.name = 'Center'
group by lines.name, route.direction, route.start, route.stop, neighborhood.name
order by lines.name desc;