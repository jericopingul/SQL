/* If two students A and B are friends, and A likes B but not vice-versa, remove the 
Likes tuple. 
*/

delete from Likes
where ID2 in (select ID2 from Friend where Likes.ID1 = ID1) and
      ID2 not in (select l.ID1 from Likes l where Likes.ID1 = l.ID2);