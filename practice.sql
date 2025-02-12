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

-- 2nd part


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

CREATE TABLE recipes (
  recipe_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title VARCHAR ( 255 ) UNIQUE NOT NULL,
  body TEXT
);

INSERT INTO recipes
  (title, body)
VALUES
  ('cookies', 'very yummy'),
  ('empanada','ugh so good'),
  ('jollof rice', 'spectacular'),
  ('shakshuka','absolutely wonderful'),
  ('khachapuri', 'breakfast perfection'),
  ('xiao long bao', 'god I want some dumplings right now');
  
  CREATE TABLE recipes_photos (
  photo_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  recipe_id INTEGER,
  url VARCHAR(255) NOT NULL
);

INSERT INTO recipes_photos
  (recipe_id, url)
VALUES
  (1, 'cookies1.jpg'),
  (1, 'cookies2.jpg'),
  (1, 'cookies3.jpg'),
  (1, 'cookies4.jpg'),
  (1, 'cookies5.jpg'),
  (2, 'empanada1.jpg'),
  (2, 'empanada2.jpg'),
  (3, 'jollof1.jpg'),
  (4, 'shakshuka1.jpg'),
  (4, 'shakshuka2.jpg'),
  (4, 'shakshuka3.jpg'),
  (5, 'khachapuri1.jpg'),
  (5, 'khachapuri2.jpg');
  
  -- SELECT * FROM recipes_photos WHERE recipe_id = 4;
  
  SELECT recipes.title, recipes.body, recipes_photos.url 
  FROM recipes_photos
  inner join recipes
  ON  recipes.recipe_id = recipes_photos.recipe_id;
  
  
  
  -- SFIO
  
  SELECT recipes.title, recipes.body, recipes_photos.url 
  FROM recipes_photos
  right outer join recipes
  ON  recipes.recipe_id = recipes_photos.recipe_id;
  
  -- right join ==> second table (recipes) , left join first table (recipes_photos) in query
  
  -- MANY TO MANY
  
  CREATE table ingredients(
id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
title VARCHAR(255),
image VARCHAR(250),
type VARCHAR(250)
);

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

select * from ingredients;
  
  CREATE TABLE recipe_ingredients (
  recipe_id INTEGER REFERENCES recipes(recipe_id) ON DELETE NO ACTION,
  ingredient_id INTEGER REFERENCES ingredients(id) ON DELETE NO ACTION,
  CONSTRAINT recipe_ingredients_pk PRIMARY KEY (recipe_id, ingredient_id)
);

INSERT INTO recipe_ingredients
  (recipe_id, ingredient_id)
VALUES
   (1, 10),
  (1, 11),
  (1, 13),
  (2, 5),
  (2, 13);
  
  select * from recipe_ingredients;
  
  Select r.title AS recipe_title, r.body AS recipe_body , i.title AS ingredients_title
  , i.image AS ingredients_image
  from recipe_ingredients ri
  inner join 
  ingredients i
  ON i.id = ri.ingredient_id
  inner join 
  recipes r
  ON r.recipe_id = ri.recipe_id;
  
  
