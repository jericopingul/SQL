/* Some reviewers didn't provide a date with their rating. Find the names of 
all reviewers who have ratings with a NULL value for the date. 
*/
select distinct name from Reviewer 
where rID in (select rID from Rating where ratingDate is null);