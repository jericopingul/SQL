/*
Find the titles of all movies that have no ratings. 
*/


select distinct title from Movie 
where mID in (select mID from Movie where mID not in (select mID from Rating));