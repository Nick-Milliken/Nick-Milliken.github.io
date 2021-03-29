#Identify which students attended the least to identify risk of quitting.
SELECT * 
FROM attendance
WHERE attendanceCount <= '30'
ORDER BY program; 

#Identify which programs have the most students
SELECT studentID, program, attendanceCount, lastAttended
FROM attendance
ORDER BY attendanceCount DESC;

#see how many students are in each program
select count(ID) as 'Student Count', programs.program, programs.Age_Group
from students
join programs
on students.programs = programs.program
group by programs.program;

#See which classes have the most students on which days
select count(ID) as 'Student Count', DayofWeek
from students
join classes 
on students.ID = classes.studentid
group by DayofWeek;

#see how many memberships the youth masters program has and how much in fees is collected
WITH 
	YM AS (select program, Age_Group from programs),
    F AS (select Fees from memberships)
select program, sum(fees) as Gross_Income, Age_Group from YM join F
where program = 'Youth Masters';     
    
    

SELECT studentID, program, count(ID)
from attendance
join students
on attendance.studentID = students.ID;

select * from students;                

SELECT * FROM attendance;