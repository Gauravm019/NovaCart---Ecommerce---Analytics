SET IDENTITY_INSERT PRODUCT ON;

INSERT INTO PRODUCT
(product_id, product_name, brand, category_id, price, is_eco_friendly)
VALUES
(1, 'boAt Wireless Earbuds', 'boAt', 1, 834.06, 0),
(2, 'Noise Bluetooth Speaker', 'Noise', 1, 1872.59, 0),
(3, 'JBL Smartwatch', 'JBL', 1, 2967.79, 1),
(4, 'Realme Power Bank', 'Realme', 1, 2628.30, 1),
(5, 'H&M Casual T-Shirt', 'H&M', 2, 1769.91, 0),
(6, 'Puma Running Shoes', 'Puma', 2, 1188.71, 0),
(7, 'Roadster Denim Jacket', 'Roadster', 2, 3243.13, 0),
(8, 'Zara Backpack', 'Zara', 2, 3556.73, 0),
(9, 'Penguin Notebook Set', 'Penguin', 3, 1667.96, 1),
(10, 'Classmate Fiction Novel', 'Classmate', 3, 3439.35, 1),
(11, 'Faber-Castell Sketch Pens', 'Faber-Castell', 3, 2621.07, 1),
(12, 'Amazon Basics Highlighter Pack', 'Amazon Basics', 3, 536.28, 1),
(13, 'Mamaearth Face Wash', 'Mamaearth', 4, 3958.81, 0),
(14, 'Nivea Moisturizer', 'Nivea', 4, 1144.37, 0),
(15, 'Lakme Lip Balm', 'Lakme', 4, 1416.48, 0),
(16, 'The Body Shop Shampoo', 'The Body Shop', 4, 432.58, 1),
(17, 'Nike Yoga Mat', 'Nike', 5, 2393.53, 0),
(18, 'Decathlon Gym Gloves', 'Decathlon', 5, 2464.94, 0),
(19, 'Adidas Skipping Rope', 'Adidas', 5, 1894.85, 0),
(20, 'boldfit Water Bottle', 'boldfit', 5, 2012.34, 0);

SET IDENTITY_INSERT PRODUCT OFF;