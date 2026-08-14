CREATE TABLE WISHLIST (
    wishlist_id INT IDENTITY(1,1) PRIMARY KEY,
    student_id INT NOT NULL,
    product_id INT NOT NULL,
    added_date DATE DEFAULT CAST(GETDATE() AS DATE),
    FOREIGN KEY (student_id) REFERENCES STUDENT(student_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id),
    UNIQUE (student_id, product_id)
);