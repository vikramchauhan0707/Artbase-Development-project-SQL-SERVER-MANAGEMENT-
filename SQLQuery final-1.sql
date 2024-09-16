use Artbase
--select * from Artists

--SELECT Artwork.Artwork_ID, Artwork.Title, Artwork.Type_of_art,
--Artwork_ArtworkGroups.Group_ID FROM Artwork JOIN
--Artwork_ArtworkGroups ON Artwork.Artwork_ID =
--Artwork_ArtworkGroups.Artwork_ID;

--SELECT Customers.Name, Artwork.Title
--FROM Customers
--LEFT JOIN Customer_Artists ON Customers.Customer_ID = Customer_Artists.Customer_ID
--LEFT JOIN Artists ON Customer_Artists.Artist_ID = Artists.Artist_ID
--LEFT JOIN Artwork ON Artists.Artist_ID = Artwork.Artist_ID;

--SELECT Artist_ID, COUNT(*) AS Artwork_Count
--FROM Artwork
--GROUP BY Artist_ID;

--INSERT INTO Artists (name, birthplace, age, style_of_art)
--VALUES ('Vincent van vick', 'Zundert, Netherlands', 37, 'Painter');

--advanced sql queries
--SELECT a.artist_id, a.name AS artist_name, AVG(art.price) AS average_price
--FROM Artists a
--JOIN Artwork art ON a.artist_id = art.artist_id
--GROUP BY a.artist_id, a.name;


--SELECT artist_id, name, 
      -- ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS artist_rank
--FROM Artists;

--SELECT *FROM (
  --  SELECT a.name AS artist_name, aw.type_of_art
   -- FROM Artists a
    --JOIN Artwork aw ON a.artist_id = aw.artist_id
--) AS src PIVOT (
--    COUNT(type_of_art) 
  --  FOR type_of_art IN ([Painting], [Sculpture], [Photograph])
--) AS pvt;

SELECT a.name AS artist_name,
       SUM(CASE WHEN aw.type_of_art = 'Painting' THEN 1 ELSE 0 END) AS painting_count,
       SUM(CASE WHEN aw.type_of_art = 'Sculpture' THEN 1 ELSE 0 END) AS sculpture_count,
       SUM(CASE WHEN aw.type_of_art = 'Photograph' THEN 1 ELSE 0 END) AS photograph_count
FROM Artists a
JOIN Artwork aw ON a.artist_id = aw.artist_id
GROUP BY a.name;