CREATE TABLE STUDENT (
    student_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15),
    age INT NOT NULL,
    gender VARCHAR(20),
    city VARCHAR(50),
    college_name VARCHAR(100),
    join_date DATE
);