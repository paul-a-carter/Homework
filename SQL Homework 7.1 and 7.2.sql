SELECT ModelYear, Make, Model
FROM EVRegistry

SELECT DISTINCT ElectricVehicleType
FROM EVRegistry

SELECT *
FROM EVRegistry
WHERE ElectricVehicleType = "Battery Electric Vehicle (BEV)"

SELECT Make, Model
FROM EVRegistry
WHERE BaseMSRP > 20000 AND BaseMSRP < 35000

SELECT *
FROM EVRegistry
WHERE City IS NULL

SELECT Make, Model, ElectricVehicleType
FROM EVRegistry
WHERE VIN LIKE "%3E1EA1J"

SELECT ModelYear, Make, Model, ElectricVehicleType, ElectricRange
FROM EVRegistry
WHERE Make = "TESLA" OR Make = "CHEVROLET"
ORDER BY Make, ModelYear DESC

SELECT stationId, COUNT(sessionId)
FROM EVCharging
GROUP BY stationId
ORDER BY COUNT(sessionId) DESC
LIMIT 5

SELECT userId, MIN(ChargeTimeHrs) AS minTime, MAX(ChargeTimeHrs) AS maxTime
FROM EVCharging
GROUP BY userId
HAVING SUM(ChargeTimeHrs) > 0.5
ORDER BY minTime, maxTime



