SELECT *
FROM udemycourse

--Different Subject for which udemy is offering courses
SELECT subject, Count(*) as OfferingCourses
from udemycourse
group by subject


--Which subject has the maximum number of courses
SELECT TOP 1 subject, count(*) as offeringCourses
from udemycourse
group by subject

--Show courses which are free, paid, highest seelling and least selling
SElECT  course_title, is_paid
from udemycourse
where is_paid = 1

SElECT  course_title, is_paid --Paid
from udemycourse
where is_paid = 0

SELECT Course_title, price -- Top Selling greater than 100
from udemycourse
where price > 100

SELECT Course_title, price -- Least selling less than 100
from udemycourse
where price < 100

--Show courses of grahics design where prices is below 100
SELECT Course_title,Subject,price
from udemycourse
where subject = 'Graphic Design' and Price < 100

--Show maximum number of subcribers fo each course level 
SELECT max(num_subscribers) as MaxNumberofsubcribers, level
from udemycourse
group by level