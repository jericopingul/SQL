/* For each movie, return the title and the 'rating spread', that is, the difference 
between highest and lowest ratings given to that movie. Sort by rating spread from 
highest to lowest, then by movie title. 
*/

select title, max(stars) - min(stars) 
as spread from Movie, Rating 
where Movie.mID = Rating.mID 
group by title 
order by spread desc;