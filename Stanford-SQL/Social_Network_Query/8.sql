/* Find the difference between the number of students in the school and the number 
of different first names. 
*/

select count(ID) - count(distinct name) 
from Highschooler