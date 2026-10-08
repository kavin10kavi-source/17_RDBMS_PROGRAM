CREATE DATABASE CollegeDB;
USE CollegeDB;

SET SERVEROUTPUT ON;

CREATE TABLE Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(50),
    Department VARCHAR2(50),
    Marks NUMBER
);

CREATE OR REPLACE PROCEDURE insert_student (
    p_student_id   IN NUMBER,
    p_student_name IN VARCHAR2,
    p_department   IN VARCHAR2,
    p_marks        IN NUMBER
)
IS
BEGIN
    INSERT INTO Student (
        Student_ID,
        Student_Name,
        Department,
        Marks
    )
    VALUES (
        p_student_id,
        p_student_name,
        p_department,
        p_marks
    );

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/

BEGIN
    insert_student(101, 'Kavi', 'Computer Science', 85);
END;
/

SELECT * FROM Student;
