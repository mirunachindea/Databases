SELECT Lines.Name, LicencePlate.Number, Vehicle.Type, Lines.Type
FROM (assignment3.Lines INNER JOIN Vehicle ON Lines.VehicleID = Vehicle.ID) INNER JOIN LicencePlate ON Vehicle.LicencePlateID = LicencePlate.ID
WHERE LicencePlate.Number Like 'CJ%'
ORDER BY Lines.Name;