
and the rating is fewer than 4 stars. 
*/

delete from Rating
where mID in
(select mID from Movie where year < 1970 or year > 2000)
and stars < 4