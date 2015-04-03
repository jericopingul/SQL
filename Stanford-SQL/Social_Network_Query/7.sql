/* For each student A who likes a student B where the two are not friends, 
find if they have a friend C in common (who can introduce them!). For all such trios, 
return the name and grade of A, B, and C. 
*/

select distinct A.name, A.grade, B.name, B.grade, C.name, C.grade
from Likes, Highschooler A, Highschooler B, Highschooler C, Friend FA, Friend FB
where 
    A.ID = Likes.ID1 
    and B.ID = Likes.ID2
    and B.ID not in (
        select ID2 from Friend where ID1 = A.ID)
    and A.ID = FA.ID1
    and C.ID = FA.ID2
    and C.ID = FB.ID1
    and B.ID = FB.ID2;