CREATE TABLE REVIEW (
    review_id INT IDENTITY(1,1) PRIMARY KEY,
    purchase_id INT NOT NULL UNIQUE,
    rating INT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    review_comment VARCHAR(500),
    review_date DATE DEFAULT CAST(GETDATE() AS DATE),
    FOREIGN KEY (purchase_id) REFERENCES PURCHASE(purchase_id)
);