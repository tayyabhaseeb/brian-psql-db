-- -- create
-- CREATE TABLE EMPLOYEE (
--   empId INTEGER PRIMARY KEY,
--   name TEXT NOT NULL,
--   dept TEXT NOT NULL
-- );

-- -- insert
-- INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales');
-- INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting');
-- INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales');

-- -- fetch 
-- SELECT * FROM EMPLOYEE WHERE dept = 'Sales';

-- CREATE TABLE ingredients (
-- id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
-- title VARCHAR ( 255 ) UNIQUE NOT NULL
-- );


-- INSERT INTO ingredients (title) VALUES ('papper-chicken');

-- alter TABLE ingredients add column image VARCHAR(255);
-- alter TABLE ingredients drop column image;
-- alter TABLE ingredients
-- add column image VARCHAR(250),
-- add column breed VARCHAR(250) NOT NULL;

-- ALTER TABLE ingredients
-- ADD COLUMN image VARCHAR(250),
-- ADD COLUMN breed VARCHAR(250) NOT NULL DEFAULT 'Unknown';




CREATE table ingredients(
id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
title VARCHAR(255),
image VARCHAR(250)
);

ALTER table ingredients ADD COLUMN type VARCHAR(500);

INSERT INTO ingredients (
  title, image, type
) VALUES
  ( 'avocado', 'avocado.jpg', 'fruit' ),
  ( 'banana', 'banana.jpg', 'fruit' ),
  ( 'beef', 'beef.jpg', 'meat' ),
  ( 'black_pepper', 'black_pepper.jpg', 'other' ),
  ( 'blueberry', 'blueberry.jpg', 'fruit' ),
  ( 'broccoli', 'broccoli.jpg', 'vegetable' ),
  ( 'carrot', 'carrot.jpg', 'vegetable' ),
  ( 'cauliflower', 'cauliflower.jpg', 'vegetable' ),
  ( 'cherry', 'cherry.jpg', 'fruit' ),
  ( 'chicken', 'chicken.jpg', 'meat' ),
  ( 'corn', 'corn.jpg', 'vegetable' ),
  ( 'cucumber', 'cucumber.jpg', 'vegetable' ),
  ( 'eggplant', 'eggplant.jpg', 'vegetable' ),
  ( 'fish', 'fish.jpg', 'meat' ),
  ( 'flour', 'flour.jpg', 'other' ),
  ( 'ginger', 'ginger.jpg', 'other' ),
  ( 'green_bean', 'green_bean.jpg', 'vegetable' ),
  ( 'onion', 'onion.jpg', 'vegetable' ),
  ( 'orange', 'orange.jpg', 'fruit' ),
  ( 'pineapple', 'pineapple.jpg', 'fruit' ),
  ( 'potato', 'potato.jpg', 'vegetable' ),
  ( 'pumpkin', 'pumpkin.jpg', 'vegetable' ),
  ( 'raspberry', 'raspberry.jpg', 'fruit' ),
  ( 'red_pepper', 'red_pepper.jpg', 'vegetable' ),
  ( 'salt', 'salt.jpg', 'other' ),
  ( 'spinach', 'spinach.jpg', 'vegetable' ),
  ( 'strawberry', 'strawberry.jpg', 'fruit' ),
  ( 'sugar', 'sugar.jpg', 'other' ),
  ( 'tomato', 'tomato.jpg', 'vegetable' ),
  ( 'watermelon', 'watermelon.jpg', 'fruit' )
ON CONFLICT DO NOTHING;

SELECT * FROM ingredients;