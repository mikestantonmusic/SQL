
/*********************************************
Select all albums with "One" in the title.*/

SELECT * 
FROM chinook.genre
WHERE Title like '%One%';

/*********************************************
Join Artist table with Album table*/

SELECT Name, Title
FROM chinook.album
Left Join chinook.artist on chinook.album.ArtistId = chinook.artist.ArtistId

/*********************************************
Get the Track IDs with the highest revenue
*/

Select sum(chinook.invoiceline.UnitPrice) as Revenue, chinook.invoiceline.TrackID
From chinook.invoiceline
Group by chinook.invoiceline.TrackID
Order by Revenue DESC
