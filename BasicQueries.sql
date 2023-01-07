/*********************************************
Select the top 50 rows from the customer table.*/

Select *
From chinook.customer
Limit 50

/*********************************************
Select all albums with "One" in the title.*/

Select * 
From chinook.genre
Where Title like '%One%';

/*********************************************
Join Artist table with Album table*/

Select Name, Title
From chinook.album
Left Join chinook.artist on chinook.album.ArtistId = chinook.artist.ArtistId;

/*********************************************
Get the Track IDs with the highest revenue
*/

Select sum(chinook.invoiceline.UnitPrice) as Revenue, chinook.invoiceline.TrackID
From chinook.invoiceline
Group by chinook.invoiceline.TrackID
Order by Revenue Desc;

/*********************************************
Get the unique years where a purchase occurred in ascending order
*/

Select distinct substring(chinook.invoice.InvoiceDate, 1, 4)
From chinook.invoice
Order by substring(chinook.invoice.InvoiceDate, 1, 4) Asc;



