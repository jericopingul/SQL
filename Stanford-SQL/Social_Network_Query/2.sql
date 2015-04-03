/* For every student who likes someone 2 or more grades younger than themselves, 
return that student's name and grade, and the name and grade of the student they like. 
*/

select s.name, s.grade, like.name, like.grade
from Likes, Highschooler s, Highschooler like
where s.ID = Likes.ID1
and like.ID = Likes.ID2
and s.grade - like.grade >=2