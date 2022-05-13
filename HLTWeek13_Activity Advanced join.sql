# Obtain a list of all modules and the names of any courses 
# they may be taught on (include modules without courses)
SELECT course.coursename, module.modulename FROM module
LEFT JOIN course
ON course.courseid = module.courseid;

# Obtain a list of students along with any related application numbers if they have them
SELECT student.*, application.applicationID FROM student
LEFT JOIN application
ON student.StudentID = application.StudentID;

# Obtain the Class ID, Class Date and Feedback score 
# of the latest class scheduled for each Class ID
SELECT * FROM schedule
GROUP BY ClassID