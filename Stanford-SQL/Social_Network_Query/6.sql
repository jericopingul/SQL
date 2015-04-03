/* Find names and grades of students who only have friends in the same grade. 
Return the result sorted by grade, then by name within each grade. 
*/

select name, grade
from Highschooler
where ID not in (
    select ID1
    from Friend, Highschooler h1, highschooler h2
    where h1.ID = Friend.ID1
    and h2.ID = Friend.ID2
    and h2.grade <> h1.grade
    )
order by grade, name;