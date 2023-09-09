SELECT weekday, ROUND(AVG(ChargeTimeHrs),2) AS avgChargeTime
FROM EVCharging
GROUP BY weekday
ORDER BY avgChargeTime DESC
LIMIT 1

SELECT userId, ROUND(SUM(kwhTotal),2) AS totalPower
FROM EVCharging
GROUP BY userId
ORDER BY totalPower DESC
LIMIT 15

SELECT typeFacility, COUNT(DISTINCT factCharge.stationId) AS numStation
FROM dimFacility
INNER JOIN factCharge ON dimFacility.facilityKey = factCharge.facilityID
GROUP BY typeFacility
ORDER BY numStation DESC

SELECT userId, MIN(chargeTimeHrs) AS minTime, MAX(chargeTimeHrs) AS maxTime
FROM EVCharging
GROUP BY userId
HAVING SUM(chargeTimeHrs) > 1
ORDER BY minTime, maxTime