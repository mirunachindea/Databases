select lines.name, lines.type, vehicle.type
from ( assignment3.lines join vehicle on vehicle.id = lines.vehicleid )
where vehicle.electrical = 'Yes';