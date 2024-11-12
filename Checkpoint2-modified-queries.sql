
-- Insert a new brand into the Brand table
INSERT INTO Brand (brand_name) VALUES ('CoolerTech');

-- Insert a new form factor into the FormFactor table
INSERT INTO FormFactor (form_factor_type) VALUES ('80%');

-- Add a new switch type to the Switch table
INSERT INTO Switch (switch_type, actuation_force, travel_distance)
VALUES ('Silent Red', 40, 1.9);

-- Insert a new user into the User table
INSERT INTO User (username, email) VALUES ('new_tester', 'new_tester@example.com');

-- Update the price of a specific keyboard model
UPDATE Keyboard
SET price = 219.99
WHERE model = 'Model10';

-- Update the actuation force of a specific switch type
UPDATE Switch
SET actuation_force = 60
WHERE switch_type = 'Cherry MX Red';

-- Delete a review with a specific review_id
DELETE FROM Review
WHERE review_id = 5;

-- Retrieve all keyboards with their brand name, form factor, and price
SELECT Keyboard.model, Brand.brand_name, FormFactor.form_factor_type, Keyboard.price
FROM Keyboard
JOIN Brand ON Keyboard.brand_id = Brand.brand_id
JOIN FormFactor ON Keyboard.form_factor_id = FormFactor.form_factor_id;

-- List all reviews for a specific keyboard model (e.g., "Model10")
SELECT Review.rating, Review.comment, User.username
FROM Review
JOIN Keyboard ON Review.keyboard_id = Keyboard.keyboard_id
JOIN User ON Review.user_id = User.user_id
WHERE Keyboard.model = 'Model10';

-- Find the average rating for each keyboard model
SELECT Keyboard.model, AVG(Review.rating) AS average_rating
FROM Review
JOIN Keyboard ON Review.keyboard_id = Keyboard.keyboard_id
GROUP BY Keyboard.model;

-- List keyboards that have switches with an actuation force greater than 55g
SELECT Keyboard.model, Switch.switch_type, Switch.actuation_force
FROM Keyboard
JOIN Switch ON Keyboard.keyboard_id = Switch.switch_id
WHERE Switch.actuation_force > 55;

-- Show all users who have left reviews with a rating of 4 or 5
SELECT DISTINCT User.username, User.email
FROM User
JOIN Review ON User.user_id = Review.user_id
WHERE Review.rating >= 4;

-- Find the most expensive keyboard model along with its brand
SELECT Keyboard.model, Brand.brand_name, MAX(Keyboard.price) AS max_price
FROM Keyboard
JOIN Brand ON Keyboard.brand_id = Brand.brand_id;

-- Retrieve all keyboards along with their average rating (if any)
SELECT Keyboard.model, Brand.brand_name, AVG(Review.rating) AS average_rating
FROM Keyboard
LEFT JOIN Review ON Keyboard.keyboard_id = Review.keyboard_id
JOIN Brand ON Keyboard.brand_id = Brand.brand_id
GROUP BY Keyboard.keyboard_id;

-- List all users who have reviewed a specific brand (e.g., "Logitech") keyboards
SELECT DISTINCT User.username, User.email
FROM User
JOIN Review ON User.user_id = Review.user_id
JOIN Keyboard ON Review.keyboard_id = Keyboard.keyboard_id
JOIN Brand ON Keyboard.brand_id = Brand.brand_id
WHERE Brand.brand_name = 'Logitech';

-- Show the total number of keyboards reviewed by each user
SELECT User.username, COUNT(Review.review_id) AS total_reviews
FROM User
LEFT JOIN Review ON User.user_id = Review.user_id
GROUP BY User.user_id;

-- Find keyboards priced between $120 and $180 and display their form factor
SELECT Keyboard.model, Keyboard.price, FormFactor.form_factor_type
FROM Keyboard
JOIN FormFactor ON Keyboard.form_factor_id = FormFactor.form_factor_id
WHERE Keyboard.price BETWEEN 120 AND 180;

-- Find the form factor and average price of keyboards for each brand
SELECT Brand.brand_name, FormFactor.form_factor_type, AVG(Keyboard.price) AS average_price
FROM Keyboard
JOIN Brand ON Keyboard.brand_id = Brand.brand_id
JOIN FormFactor ON Keyboard.form_factor_id = FormFactor.form_factor_id
GROUP BY Brand.brand_name, FormFactor.form_factor_type;

-- Retrieve the latest 5 reviews posted
SELECT Review.comment, Review.rating, User.username, Keyboard.model
FROM Review
JOIN User ON Review.user_id = User.user_id
JOIN Keyboard ON Review.keyboard_id = Keyboard.keyboard_id
ORDER BY Review.review_id DESC
LIMIT 5;

-- List the brands with the highest average keyboard price
SELECT Brand.brand_name, AVG(Keyboard.price) AS avg_price
FROM Keyboard
JOIN Brand ON Keyboard.brand_id = Brand.brand_id
GROUP BY Brand.brand_id
ORDER BY avg_price DESC
LIMIT 1;
