USE uni

SELECT * FROM student
WHERE CourseID !=1;

SELECT Forenames,Surname,DateOfBirth FROM student
WHERE EmailAddress = 'val.bolger@example.com';

SELECT ModuleName FROM module
WHERE subject = 'Economics';

SELECT ClassID FROM schedule
WHERE CDate < '2020-09-21';