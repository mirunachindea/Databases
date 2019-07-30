CREATE VIEW `view1` AS
select lines.name, lines.type, vehicle.type, vehicle.electrical
from lines join vehicle on lines.vehicleid = vehicle.id;