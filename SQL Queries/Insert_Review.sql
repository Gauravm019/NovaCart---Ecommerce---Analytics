SET IDENTITY_INSERT REVIEW ON;

INSERT INTO REVIEW
(review_id, purchase_id, rating, review_comment, review_date)
VALUES
(1, 2, 4, 'Fast delivery, very satisfied', '2025-03-24'),
(2, 4, 5, 'Great quality, worth the price', '2025-04-24'),
(3, 5, 4, 'Great quality, worth the price', '2025-05-17'),
(4, 7, 3, 'Average experience overall', '2025-04-24'),
(5, 8, 3, 'Decent product, could be better', '2025-01-06'),
(6, 9, 4, 'Fast delivery, very satisfied', '2025-06-05'),
(7, 11, 2, 'Delivery took too long', '2025-01-01'),
(8, 12, 4, 'Exactly as described', '2025-03-03'),
(9, 14, 4, 'Fast delivery, very satisfied', '2025-08-19'),
(10, 15, 3, 'Average experience overall', '2025-10-03'),
(11, 16, 5, 'Great quality, worth the price', '2025-12-11'),
(12, 17, 5, 'Exactly as described', '2025-08-27'),
(13, 18, 5, 'Exactly as described', '2025-10-03'),
(14, 19, 5, 'Fast delivery, very satisfied', '2025-10-22'),
(15, 20, 5, 'Exactly as described', '2025-11-20');

SET IDENTITY_INSERT REVIEW OFF;