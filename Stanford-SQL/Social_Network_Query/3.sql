/* For every pair of students who both like each other, return the name and grade of 
both students. Include each pair only once, with the two names in alphabetical order. 
*/

select h1.name, h1.grade, h2.name, h2.grade 
from Likes l1, Likes l2, Highschooler h1, Highschooler h2
where l1.ID1 = l2.ID2 
and l2.ID1 = l1.ID2
and l1.ID1 = h1.ID 
and l1.ID2 = h2.ID 
and h1.name < h2.name;