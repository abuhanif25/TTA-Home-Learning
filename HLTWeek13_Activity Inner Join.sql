USE uni;
SELECT * FROM student;
SELECT * FROM course;
# Obtain a list of Students and the name of the Courses they are studying
SELECT student.*,course.courseName FROM student
INNER JOIN course
ON student.courseID = course.courseID;

# Obtain a list of course names, full time fees and part time fees for each course.
SELECT * FROM course
SELECT * FROM fees
SELECT course.courseName, fees.FullTimeFee, Fees.PartTimeFee FROM course
INNER JOIN fees
ON course.CourseID = fees.CourseID;

# Obtain a list of ClassID for the Economics Course and the modules they relate to.
SELECT * FROM course
INNER JOIN module
ON course.CourseID = module.CourseID
INNER JOIN class
ON class.ModuleID = module.ModuleID
WHERE course.CourseID = 1