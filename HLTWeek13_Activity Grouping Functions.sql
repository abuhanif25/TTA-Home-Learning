# Obtain the number of modules which are assigned to each course.
SELECT courseid, COUNT(*) FROM module
GROUP BY courseid;

# Retrieve Information on the number of successful applications per course.
SELECT courseappliedfor,COUNT(*) FROM application
GROUP BY courseappliedfor;

# Find the average MembershipFee of Student Clubs 
# by the ID of the Staff member (Lecturer) supervising it.
SELECT supervisingstaff, AVG(membershipfee) FROM club
GROUP BY SupervisingStaff;

# Find the Sum total of Joining Fees for all active clubs by Staff Member supervising them
SELECT supervisingstaff, SUM(joiningfee) FROM club
WHERE active = 1
GROUP BY SupervisingStaff;