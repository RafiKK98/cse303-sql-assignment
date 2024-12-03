CREATE TABLE
    EMPLOYEE (
        emp_id INT PRIMARY KEY,
        fname VARCHAR(50),
        lname VARCHAR(50),
        stor_id INT,
        job_id INT,
        pub_id INT,
        hire_date DATE,
        job_lvl INT,
        city VARCHAR(50),
        state VARCHAR(50),
        zip VARCHAR(10),
        country VARCHAR(50),
        managerID INT,
        supervisorID INT
    );