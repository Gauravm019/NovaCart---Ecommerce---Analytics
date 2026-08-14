SET IDENTITY_INSERT PURCHASE ON;

INSERT INTO PURCHASE
(purchase_id, student_id, product_id, purchase_date, purchase_amount, quantity, payment_method, delivery_preference)
VALUES
(1, 13, 6, '2025-11-05', 1188.71, 1, 'Cash on Delivery', 'Standard'),
(2, 8, 7, '2025-03-24', 6486.26, 2, 'Wallet', 'Prime'),
(3, 13, 16, '2025-10-03', 432.58, 1, 'UPI', 'Prime'),
(4, 17, 9, '2025-04-24', 3335.92, 2, 'UPI', 'Prime'),
(5, 20, 16, '2025-05-17', 432.58, 1, 'Wallet', 'Standard'),
(6, 5, 8, '2025-08-18', 7113.46, 2, 'Cash on Delivery', 'Standard'),
(7, 9, 7, '2025-04-24', 3243.13, 1, 'UPI', 'Prime'),
(8, 8, 2, '2025-01-06', 1872.59, 1, 'UPI', 'Prime'),
(9, 5, 3, '2025-06-05', 2967.79, 1, 'Wallet', 'Standard'),
(10, 17, 19, '2025-03-19', 1894.85, 1, 'Wallet', 'Prime'),
(11, 12, 10, '2025-01-01', 6878.70, 2, 'Debit Card', 'Prime'),
(12, 10, 11, '2025-03-03', 2621.07, 1, 'Credit Card', 'Prime'),
(13, 2, 5, '2025-06-12', 1769.91, 1, 'Debit Card', 'Standard'),
(14, 14, 1, '2025-08-19', 834.06, 1, 'Debit Card', 'Prime'),
(15, 19, 1, '2025-10-03', 834.06, 1, 'UPI', 'Prime'),
(16, 9, 14, '2025-12-11', 1144.37, 1, 'Wallet', 'Standard'),
(17, 15, 15, '2025-08-27', 2832.96, 2, 'UPI', 'Standard'),
(18, 1, 10, '2025-10-03', 3439.35, 1, 'UPI', 'Standard'),
(19, 4, 16, '2025-10-22', 432.58, 1, 'UPI', 'Prime'),
(20, 10, 5, '2025-11-20', 1769.91, 1, 'Credit Card', 'Standard');

SET IDENTITY_INSERT PURCHASE OFF;