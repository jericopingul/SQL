/* For every situation where student A likes student B, but we have no information 
about whom B likes (that is, B does not appear as an ID1 in the Likes table), return 
A and B's names and grades. 
*/

select distinct A.name, A.grade, B.name, B.grade
from Highschooler A, Highschooler B, Likes
where A.ID = Likes.ID1 
and B.ID = Likes.ID2 
and B.ID not in (select ID1 from Likes);