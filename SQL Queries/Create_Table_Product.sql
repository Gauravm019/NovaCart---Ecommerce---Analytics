CREATE TABLE PRODUCT (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(120) NOT NULL,
    brand VARCHAR(60),
    category_id INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    is_eco_friendly BIT DEFAULT 0,
    FOREIGN KEY (category_id) REFERENCES PRODUCT_CATEGORY(category_id)
);