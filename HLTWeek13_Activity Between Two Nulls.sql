# Obtain a list of applications where the CourseID is unknown.

SELECT * FROM application
WHERE courseappliedfor is null;

# Obtain a list of students where their CourseID is not unknown.
SELECT * FROM student
WHERE courseid is not null;

# Obtain a list of students whom were born in the month of June 2002.
SELECT * FROM student
WHERE dateofbirth BETWEEN '2002-06-01' and '2002-06-30';

# Obtain a list of applications where CourseID is unknown and the applications 
# where made between 01/04/2020 and 31/07/2020
SELECT * FROM application
WHERE courseappliedfor is null
AND dateofapplication BETWEEN '2020-04-01' AND '2020-07-31';
