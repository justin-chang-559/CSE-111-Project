
-- Drop tables if they already exist
DROP TABLE IF EXISTS Keyboard;
DROP TABLE IF EXISTS Brand;
DROP TABLE IF EXISTS Switch;
DROP TABLE IF EXISTS FormFactor;
DROP TABLE IF EXISTS Review;
DROP TABLE IF EXISTS User;

-- Create tables
CREATE TABLE Brand (
    brand_id INTEGER PRIMARY KEY,
    brand_name TEXT NOT NULL
);

CREATE TABLE FormFactor (
    form_factor_id INTEGER PRIMARY KEY,
    form_factor_type TEXT NOT NULL
);

CREATE TABLE Switch (
    switch_id INTEGER PRIMARY KEY,
    switch_type TEXT NOT NULL,
    actuation_force INTEGER,
    travel_distance REAL
);

CREATE TABLE User (
    user_id INTEGER PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);

CREATE TABLE Keyboard (
    keyboard_id INTEGER PRIMARY KEY,
    brand_id INTEGER,
    form_factor_id INTEGER,
    model TEXT,
    price REAL,
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id),
    FOREIGN KEY (form_factor_id) REFERENCES FormFactor(form_factor_id)
);

CREATE TABLE Review (
    review_id INTEGER PRIMARY KEY,
    keyboard_id INTEGER,
    user_id INTEGER,
    rating INTEGER CHECK(rating >= 1 AND rating <= 5),
    comment TEXT,
    FOREIGN KEY (keyboard_id) REFERENCES Keyboard(keyboard_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Insert sample data into Brand table
INSERT INTO Brand (brand_id, brand_name) VALUES
(1, 'Keychron'),
(2, 'Corsair'),
(3, 'Logitech'),
(4, 'Razer'),
(5, 'Ducky'),
(6, 'SteelSeries'),
(7, 'HyperX'),
(8, 'Asus'),
(9, 'Acer'),
(10, 'HP'),
(11, 'Alienware'),
(12, 'Dell'),
(13, 'MSI'),
(14, 'EVGA'),
(15, 'Redragon'),
(16, 'Cooler Master'),
(17, 'Aukey'),
(18, 'Anne Pro'),
(19, 'Varmilo'),
(20, 'Leopold'),
(21, 'Filco'),
(22, 'Ajazz'),
(23, 'Tecware'),
(24, 'RK Royal Kludge'),
(25, 'G.Skill'),
(26, 'iKBC'),
(27, 'Epomaker'),
(28, 'Akko'),
(29, 'Das Keyboard'),
(30, 'Velocifire'),
(31, 'Apple'),
(32, 'Microsoft'),
(33, 'Samsung'),
(34, 'Gigabyte'),
(35, 'ZSA'),
(36, 'E-Element'),
(37, 'TOFU'),
(38, 'KBDfans'),
(39, 'Drop'),
(40, 'NuPhy'),
(41, 'Feker'),
(42, 'YMDK'),
(43, 'Hexgears'),
(44, 'NiZ'),
(45, 'KBDFans'),
(46, 'ID80'),
(47, 'DREVO'),
(48, 'ABKO'),
(49, 'Kinesis'),
(50, 'GMK');
-- Insert sample data into FormFactor table
INSERT INTO FormFactor (form_factor_id, form_factor_type) VALUES
(1, 'Full-size'),
(2, 'Tenkeyless'),
(3, '65%'),
(4, '75%'),
(5, '40%'),
(6, '60%'),
(7, '96%'),
(8, '1800 Compact'),
(9, 'Ergonomic'),
(10, 'Compact'),
(11, 'Full-size'),
(12, 'Tenkeyless'),
(13, '65%'),
(14, '75%'),
(15, '40%'),
(16, '60%'),
(17, '96%'),
(18, '1800 Compact'),
(19, 'Ergonomic'),
(20, 'Compact'),
(21, 'Full-size'),
(22, 'Tenkeyless'),
(23, '65%'),
(24, '75%'),
(25, '40%'),
(26, '60%'),
(27, '96%'),
(28, '1800 Compact'),
(29, 'Ergonomic'),
(30, 'Compact'),
(31, 'Full-size'),
(32, 'Tenkeyless'),
(33, '65%'),
(34, '75%'),
(35, '40%'),
(36, '60%'),
(37, '96%'),
(38, '1800 Compact'),
(39, 'Ergonomic'),
(40, 'Compact'),
(41, 'Full-size'),
(42, 'Tenkeyless'),
(43, '65%'),
(44, '75%'),
(45, '40%'),
(46, '60%'),
(47, '96%'),
(48, '1800 Compact'),
(49, 'Ergonomic'),
(50, 'Compact');
-- Insert sample data into Switch table
INSERT INTO Switch (switch_id, switch_type, actuation_force, travel_distance) VALUES
(1, 'Cherry MX Red', 45, 1.5),
(2, 'Cherry MX Blue', 46, 1.6),
(3, 'Cherry MX Brown', 47, 1.7),
(4, 'Gateron Red', 48, 1.8),
(5, 'Gateron Blue', 49, 1.9),
(6, 'Kailh Box White', 50, 2.0),
(7, 'Romer-G', 51, 2.1),
(8, 'Topre', 52, 2.2),
(9, 'Holy Panda', 53, 2.3),
(10, 'Outemu Blue', 54, 2.4),
(11, 'Razer Green', 45, 1.5),
(12, 'Razer Orange', 46, 1.6),
(13, 'Glorious Panda', 47, 1.7),
(14, 'Cherry MX Silent', 48, 1.8),
(15, 'Kailh Brown', 49, 1.9),
(16, 'Alpaca V2', 50, 2.0),
(17, 'TTC Gold Pink', 51, 2.1),
(18, 'Boba U4', 52, 2.2),
(19, 'NovelKeys Cream', 53, 2.3),
(20, 'Zilent V2', 54, 2.4),
(21, 'Cherry MX Red', 45, 1.5),
(22, 'Cherry MX Blue', 46, 1.6),
(23, 'Cherry MX Brown', 47, 1.7),
(24, 'Gateron Red', 48, 1.8),
(25, 'Gateron Blue', 49, 1.9),
(26, 'Kailh Box White', 50, 2.0),
(27, 'Romer-G', 51, 2.1),
(28, 'Topre', 52, 2.2),
(29, 'Holy Panda', 53, 2.3),
(30, 'Outemu Blue', 54, 2.4),
(31, 'Razer Green', 45, 1.5),
(32, 'Razer Orange', 46, 1.6),
(33, 'Glorious Panda', 47, 1.7),
(34, 'Cherry MX Silent', 48, 1.8),
(35, 'Kailh Brown', 49, 1.9),
(36, 'Alpaca V2', 50, 2.0),
(37, 'TTC Gold Pink', 51, 2.1),
(38, 'Boba U4', 52, 2.2),
(39, 'NovelKeys Cream', 53, 2.3),
(40, 'Zilent V2', 54, 2.4),
(41, 'Cherry MX Red', 45, 1.5),
(42, 'Cherry MX Blue', 46, 1.6),
(43, 'Cherry MX Brown', 47, 1.7),
(44, 'Gateron Red', 48, 1.8),
(45, 'Gateron Blue', 49, 1.9),
(46, 'Kailh Box White', 50, 2.0),
(47, 'Romer-G', 51, 2.1),
(48, 'Topre', 52, 2.2),
(49, 'Holy Panda', 53, 2.3),
(50, 'Outemu Blue', 54, 2.4);
-- Insert sample data into User table
INSERT INTO User (user_id, username, email) VALUES
(1, 'user1', 'user1@example.com'),
(2, 'user2', 'user2@example.com'),
(3, 'user3', 'user3@example.com'),
(4, 'user4', 'user4@example.com'),
(5, 'user5', 'user5@example.com'),
(6, 'user6', 'user6@example.com'),
(7, 'user7', 'user7@example.com'),
(8, 'user8', 'user8@example.com'),
(9, 'user9', 'user9@example.com'),
(10, 'user10', 'user10@example.com'),
(11, 'user11', 'user11@example.com'),
(12, 'user12', 'user12@example.com'),
(13, 'user13', 'user13@example.com'),
(14, 'user14', 'user14@example.com'),
(15, 'user15', 'user15@example.com'),
(16, 'user16', 'user16@example.com'),
(17, 'user17', 'user17@example.com'),
(18, 'user18', 'user18@example.com'),
(19, 'user19', 'user19@example.com'),
(20, 'user20', 'user20@example.com'),
(21, 'user21', 'user21@example.com'),
(22, 'user22', 'user22@example.com'),
(23, 'user23', 'user23@example.com'),
(24, 'user24', 'user24@example.com'),
(25, 'user25', 'user25@example.com'),
(26, 'user26', 'user26@example.com'),
(27, 'user27', 'user27@example.com'),
(28, 'user28', 'user28@example.com'),
(29, 'user29', 'user29@example.com'),
(30, 'user30', 'user30@example.com'),
(31, 'user31', 'user31@example.com'),
(32, 'user32', 'user32@example.com'),
(33, 'user33', 'user33@example.com'),
(34, 'user34', 'user34@example.com'),
(35, 'user35', 'user35@example.com'),
(36, 'user36', 'user36@example.com'),
(37, 'user37', 'user37@example.com'),
(38, 'user38', 'user38@example.com'),
(39, 'user39', 'user39@example.com'),
(40, 'user40', 'user40@example.com'),
(41, 'user41', 'user41@example.com'),
(42, 'user42', 'user42@example.com'),
(43, 'user43', 'user43@example.com'),
(44, 'user44', 'user44@example.com'),
(45, 'user45', 'user45@example.com'),
(46, 'user46', 'user46@example.com'),
(47, 'user47', 'user47@example.com'),
(48, 'user48', 'user48@example.com'),
(49, 'user49', 'user49@example.com'),
(50, 'user50', 'user50@example.com');
-- Insert sample data into Keyboard table
INSERT INTO Keyboard (keyboard_id, brand_id, form_factor_id, model, price) VALUES
(1, 49, 9, 'Model1', 94.83710141516595),
(2, 45, 6, 'Model2', 148.97083379255932),
(3, 17, 6, 'Model3', 67.46059228315171),
(4, 28, 3, 'Model4', 90.78461753783367),
(5, 43, 6, 'Model5', 123.53146086699478),
(6, 44, 2, 'Model6', 112.00292805112713),
(7, 11, 10, 'Model7', 124.93943567780731),
(8, 10, 8, 'Model8', 195.25059799369203),
(9, 21, 9, 'Model9', 55.869273661692155),
(10, 42, 1, 'Model10', 81.53337133955104),
(11, 22, 4, 'Model11', 122.75306405156587),
(12, 1, 9, 'Model12', 93.31239437753402),
(13, 22, 5, 'Model13', 81.19340159904924),
(14, 36, 6, 'Model14', 164.69099557630702),
(15, 27, 8, 'Model15', 67.96353711111395),
(16, 5, 10, 'Model16', 86.89499544583654),
(17, 15, 9, 'Model17', 168.76653477665755),
(18, 43, 8, 'Model18', 143.70073484600258),
(19, 50, 10, 'Model19', 96.63930684373251),
(20, 39, 10, 'Model20', 81.36928784515064),
(21, 36, 2, 'Model21', 144.84268432203342),
(22, 49, 4, 'Model22', 153.42506465710434),
(23, 19, 9, 'Model23', 156.7578422590653),
(24, 25, 5, 'Model24', 121.585800300924),
(25, 31, 2, 'Model25', 84.62962511606044),
(26, 18, 9, 'Model26', 115.38170616974084),
(27, 49, 9, 'Model27', 150.78335860327567),
(28, 20, 3, 'Model28', 134.17559300174815),
(29, 18, 9, 'Model29', 195.63414871243236),
(30, 47, 9, 'Model30', 134.010139865134),
(31, 2, 10, 'Model31', 121.95290964489448),
(32, 48, 9, 'Model32', 84.86697351483197),
(33, 10, 8, 'Model33', 132.01405838208757),
(34, 5, 3, 'Model34', 55.15280632424104),
(35, 20, 7, 'Model35', 114.86197377634241),
(36, 33, 8, 'Model36', 92.4425278032713),
(37, 43, 7, 'Model37', 97.27462366435235),
(38, 2, 3, 'Model38', 76.8382089224033),
(39, 23, 9, 'Model39', 106.71342315639393),
(40, 41, 7, 'Model40', 115.75762076457107),
(41, 33, 1, 'Model41', 196.195337463444),
(42, 48, 1, 'Model42', 196.424765963909),
(43, 27, 7, 'Model43', 120.17088404340262),
(44, 16, 10, 'Model44', 68.1582277874105),
(45, 36, 4, 'Model45', 173.6925804023713),
(46, 12, 8, 'Model46', 173.1676505285603),
(47, 6, 3, 'Model47', 157.46010233689742),
(48, 5, 6, 'Model48', 163.2212854210734),
(49, 14, 6, 'Model49', 191.9326367374187),
(50, 24, 4, 'Model50', 105.52954364870601);
-- Insert sample data into Review table
INSERT INTO Review (review_id, keyboard_id, user_id, rating, comment) VALUES
(1, 38, 35, 2, 'Sample review comment 1'),
(2, 13, 9, 2, 'Sample review comment 2'),
(3, 1, 16, 3, 'Sample review comment 3'),
(4, 32, 16, 2, 'Sample review comment 4'),
(5, 9, 46, 1, 'Sample review comment 5'),
(6, 29, 47, 1, 'Sample review comment 6'),
(7, 39, 34, 2, 'Sample review comment 7'),
(8, 39, 21, 5, 'Sample review comment 8'),
(9, 32, 36, 3, 'Sample review comment 9'),
(10, 10, 45, 1, 'Sample review comment 10'),
(11, 7, 13, 3, 'Sample review comment 11'),
(12, 12, 16, 5, 'Sample review comment 12'),
(13, 24, 7, 3, 'Sample review comment 13'),
(14, 34, 26, 3, 'Sample review comment 14'),
(15, 31, 31, 1, 'Sample review comment 15'),
(16, 46, 41, 3, 'Sample review comment 16'),
(17, 35, 22, 1, 'Sample review comment 17'),
(18, 36, 23, 4, 'Sample review comment 18'),
(19, 29, 19, 4, 'Sample review comment 19'),
(20, 11, 11, 3, 'Sample review comment 20'),
(21, 20, 34, 1, 'Sample review comment 21'),
(22, 34, 41, 1, 'Sample review comment 22'),
(23, 49, 33, 3, 'Sample review comment 23'),
(24, 46, 29, 5, 'Sample review comment 24'),
(25, 47, 18, 2, 'Sample review comment 25'),
(26, 37, 30, 4, 'Sample review comment 26'),
(27, 14, 8, 5, 'Sample review comment 27'),
(28, 15, 4, 5, 'Sample review comment 28'),
(29, 8, 24, 2, 'Sample review comment 29'),
(30, 31, 41, 3, 'Sample review comment 30'),
(31, 19, 25, 1, 'Sample review comment 31'),
(32, 9, 9, 5, 'Sample review comment 32'),
(33, 21, 43, 3, 'Sample review comment 33'),
(34, 18, 45, 5, 'Sample review comment 34'),
(35, 2, 25, 1, 'Sample review comment 35'),
(36, 9, 4, 5, 'Sample review comment 36'),
(37, 25, 46, 5, 'Sample review comment 37'),
(38, 49, 14, 2, 'Sample review comment 38'),
(39, 37, 8, 1, 'Sample review comment 39'),
(40, 41, 29, 3, 'Sample review comment 40'),
(41, 6, 29, 2, 'Sample review comment 41'),
(42, 25, 46, 1, 'Sample review comment 42'),
(43, 19, 49, 5, 'Sample review comment 43'),
(44, 15, 15, 5, 'Sample review comment 44'),
(45, 30, 8, 5, 'Sample review comment 45'),
(46, 7, 1, 4, 'Sample review comment 46'),
(47, 31, 8, 4, 'Sample review comment 47'),
(48, 3, 3, 1, 'Sample review comment 48'),
(49, 32, 37, 1, 'Sample review comment 49'),
(50, 25, 46, 5, 'Sample review comment 50');


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
