SET IDENTITY_INSERT PRODUCT_CATEGORY ON;

INSERT INTO PRODUCT_CATEGORY
(category_id, category_name, description)
VALUES
(1, 'Electronics', 'Gadgets and accessories for students'),
(2, 'Fashion & Apparel', 'Clothing and footwear'),
(3, 'Books & Stationery', 'Study material and stationery'),
(4, 'Beauty & Personal Care', 'Personal care and grooming products'),
(5, 'Sports & Fitness', 'Fitness gear and sportswear');

SET IDENTITY_INSERT PRODUCT_CATEGORY OFF;