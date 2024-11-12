-- Create the Keyboard table
CREATE TABLE Keyboard (
    keyboard_id INTEGER PRIMARY KEY,
    brand_id INTEGER,
    form_factor_id INTEGER,
    model TEXT,
    price REAL,
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id),
    FOREIGN KEY (form_factor_id) REFERENCES FormFactor(form_factor_id)
);

-- Create the Brand table
CREATE TABLE Brand (
    brand_id INTEGER PRIMARY KEY,
    brand_name TEXT NOT NULL
);

-- Create the Switch table
CREATE TABLE Switch (
    switch_id INTEGER PRIMARY KEY,
    switch_type TEXT NOT NULL,
    actuation_force INTEGER,
    travel_distance REAL
);

-- Create the FormFactor table
CREATE TABLE FormFactor (
    form_factor_id INTEGER PRIMARY KEY,
    form_factor_type TEXT NOT NULL
);

-- Create the Review table
CREATE TABLE Review (
    review_id INTEGER PRIMARY KEY,
    keyboard_id INTEGER,
    user_id INTEGER,
    rating INTEGER CHECK(rating >= 1 AND rating <= 5),
    comment TEXT,
    FOREIGN KEY (keyboard_id) REFERENCES Keyboard(keyboard_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Create the User table
CREATE TABLE User (
    user_id INTEGER PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);
