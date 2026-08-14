CREATE TABLE PURCHASE (
    purchase_id INT IDENTITY(1,1) PRIMARY KEY,
    student_id INT NOT NULL,
    product_id INT NOT NULL,
    purchase_date DATE NOT NULL,
    purchase_amount DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    payment_method VARCHAR(30) NOT NULL,
    delivery_preference VARCHAR(20) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES STUDENT(student_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);