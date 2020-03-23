--SELECT o.Name AS OwnerName, n.Name As NeighborhoodName FROM Owner o
--LEFT JOIN Neighborhood n ON n.Id = o.NeighborhoodId

--SELECT o.Name AS OwnerName, n.Name As NeighborhoodName FROM Owner o
--LEFT JOIN Neighborhood n ON n.Id = o.NeighborhoodId
--WHERE o.Id = 1

--Select wkr.[Name] FROM Walker wkr
--ORDER BY [Name] ASC

--SELECT DISTINCT d.Breed FROM Dog d

--SELECT d.Name AS DogName, o.Name AS OwnerName, n.Name AS NeighborhoodName FROM Dog d
--LEFT JOIN Owner o ON o.Id = d.OwnerId
--LEFT JOIN Neighborhood n ON n.Id = o.NeighborhoodId

--SELECT o.Name AS OwnerName, COUNT(d.OwnerId) AS NumberOfDogs FROM Owner o
--LEFT JOIN Dog d ON d.OwnerId = o.Id
--GROUP BY o.Name

--SELECT wkr.[Name] AS WalkerName, COUNT(w.WalkerId) AS NumberOfWalks FROM Walker wkr
--LEFT JOIN Walks w ON w.WalkerId =wkr.Id
--GROUP BY wkr.Name

--SELECT n.[Name] As Neighborhood, COUNT(wkr.[Name]) AS NumberOfWalkers FROM Neighborhood n
--LEFT JOIN Walker wkr ON wkr.NeighborhoodId = n.Id
--GROUP BY n.[Name]

--SELECT d.[Name] from Dog d
--LEFT JOIN Walks w ON w.DogId = d.Id
--WHERE w.Date > '03/14/2020' and w.Date < '03/22/2020';

--SELECT d.[Name] from Dog d
--LEFT JOIN Walks w ON w.DogId = d.Id
--GROUP BY d.[Name]
--HAVING COUNT(w.Id) = 0