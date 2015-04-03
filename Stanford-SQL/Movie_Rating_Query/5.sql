/* Write a query to return the ratings data in a more readable format: reviewer name, 
movie title, stars, and ratingDate. Also, sort the data, first by reviewer name, 
then by movie title, and lastly by number of stars. */

select name,title,stars,ratingDate 
from Reviewer,Rating,Movie 
where Reviewer.rID=Rating.rID and Movie.mID=Rating.mID 
order by name, title, stars;