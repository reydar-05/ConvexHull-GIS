CREATE TABLE NEAR
(NAME VARCHAR(25), LOCATION geometry);

INSERT INTO NEAR(NAME,LOCATION)
VALUES('Gateway of India',ST_GeomFromText('POINT(72.8347 18.9220)')),
('India Gate',ST_GeomFromText('POINT(77.2295 28.6129)')),
('Taj Mahal',ST_GeomFromText('POINT(78.0421 27.1751)')),
('Red Fort',ST_GeomFromText('POINT(77.2410 28.6562)')),
('Victoria Memorial',ST_GeomFromText('POINT(88.3426 22.5448)')),
('Golden Temple',ST_GeomFromText('POINT(74.8765 31.6200)')),
('Hawa Mahal',ST_GeomFromText('POINT(75.8267 26.9239)')),
('Charminar',ST_GeomFromText('POINT(78.4747 17.3616)')),
('Meenakshi Temple',ST_GeomFromText('POINT(78.1198 9.9195)'));

SELECT ST_AsText(ST_ConvexHull(ST_Collect(location))) FROM NEAR;

SELECT n2.NAME 
FROM NEAR AS n1, NEAR AS n2
WHERE n1.NAME='Gateway of India' AND n1.NAME<>n2.NAME
ORDER BY ST_DISTANCE(n1.location,n2.location)
LIMIT 3;
