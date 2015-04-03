/* Find the difference between the average rating of movies released before 1980 and 
the average rating of movies released after 1980. (Make sure to calculate the average 
rating for each movie, then the average of those averages for movies before 1980 and 
movies after. Don't just calculate the overall average rating before and after 1980.) 
*/

select  down.av1980down - up.av1980up 
from    (select avg(avgst) as av1980up from 
        (select title, avg(stars) avgst
         from Movie,Rating
         where year>1980 and Movie.mID=Rating.mID group by title
        )
    ) as up,
    (select avg(avgst) as av1980down from
                (select title, avg(stars) avgst
                 from Movie,Rating
                 where year<1980 and Movie.mID=Rating.mID group by title
                )
        ) as down;