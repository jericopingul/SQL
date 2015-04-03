/* Find the name and grade of all students who are liked by more than one other student. 
*/

Select A.name, A.grade 
From Highschooler A, Likes
Where A.ID = Likes.ID2
group by Likes.ID2
having count(Likes.ID1) > 1