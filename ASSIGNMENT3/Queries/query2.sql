SELECT Drivers.LastName, Drivers.Firstname, Drivers.LicenceNumber, Lines.Name AS Line, Vehicle.Type
FROM (assignment3.Lines INNER JOIN Vehicle ON Lines.VehicleID = Vehicle.ID) INNER JOIN Drivers ON Vehicle.DriverID = Drivers.ID
WHERE Vehicle.Type in ('Bus', 'Trolley Bus')
ORDER BY Vehicle.Type;
