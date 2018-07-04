-- Table - People
-- __________________________________________________________________________________________
-- Instructions
-- Create a table called Person that records a person's ID, Name, Age, Height ( in cm ), City, FavoriteColor.
-- ID should be an auto-incrementing id/primary key - Use type: INTEGER PRIMARY KEY AUTOINCREMENT

   CREATE TABLE person(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        age INTEGER,
        height INTEGER,
        city TEXT,
        favoriteColor TEXT
        );

-- Add 5 different people into the Person database.
-- Remember to not include the ID because it should auto-increment.

        

        INSERT INTO person 
        (name, age, height, city, favoriteColor)
        VALUES
        ('Luis',21,160,'São José dos Campos','green'),
        ('Leonie',22,164,'Stuttgart','black'),
        ('Francois',23,168,'Montréal','green'),
        ('Bjorn',21,160,'Oslo','blue'),
        ('Helena',25,155,'Prague','yellow');

-- List all the people in the Person table by Height from tallest to shortest.
      SELECT * FROM person
      ORDER BY height DESC;

-- List all the people in the Person table by Height from shortest to tallest.

    SELECT * FROM person
    ORDER BY height ASC;
-- List all the people in the Person table by Age from oldest to youngest.
    SELECT * FROM person
    ORDER BY age DESC;
-- List all the people in the Person table older than age 20.
    SELECT * FROM person
    WHERE age > 20;
-- List all the people in the Person table that are exactly 18.
    SELECT * FROM person
    WHERE age = 18;
-- List all the people in the Person table that are less than 20 and older than 30.
    SELECT * FROM person
    WHERE age < 20 AND age > 30;
    
-- List all the people in the Person table that are not 27 (Use not equals).
     SELECT * FROM person
      WHERE age != 27;
    
-- List all the people in the Person table where their favorite color is not red.
     SELECT * FROM person
     WHERE favoriteColor != 'red';
-- List all the people in the Person table where their favorite color is not red and is not blue.
       SELECT * FROM person
       WHERE favoriteColor != 'red' AND favoriteColor != 'blue';
-- List all the people in the Person table where their favorite color is orange or green.
       SELECT * FROM person
       WHERE favoriteColor != 'red' AND favoriteColor != 'blue';
-- List all the people in the Person table where their favorite color is orange, green or blue (use IN).
       SELECT * FROM person
       WHERE favoriteColor IN ('orange','green','blue');
-- List all the people in the Person table where their favorite color is yellow or purple (use IN).
       SELECT * FROM person
       WHERE favoriteColor != 'red' AND favoriteColor != 'blue';
__________________________________________________________________________________________

-- Table - Orders
-- Instructions
-- Create a table called Orders that records: PersonID, ProductName, ProductPrice, Quantity.
CREATE TABLE orders (
  personId INTEGER PRIMARY KEY AUTOINCREMENT,
  productName TEXT,
  productPrice INTEGER,
  quantity INTEGER
);
-- Add 5 Orders to the Orders table.
    INSERT INTO orders
    (productName,productPrice,quantity)
    VALUES
    ('mac',1200,2),
    ('iphone X',1000, 2),
    ('apple watch',350, 5),
    ('airpods', 159,2),
    ('apple tv',179,1);


-- Make orders for at least two different people.
-- PersonID should be different for different people.
    UPDATE orders
    SET personId= 1
    WHERE productName = 'mac';

    UPDATE orders
    SET personId= 3
    WHERE productName = 'apple tv';
   

-- Select all the records from the Orders table.
    SELECT * FROM orders;
-- Calculate the total number of products ordered.
   SELECT sum(quantity) FROM orders;
-- Calculate the total order price.
    SELECT sum(quantity) FROM orders;
-- Calculate the total order price by a single PersonID.
   SELECT sum(productPrice) FROM orders;

__________________________________________________________________________________________

-- Table - Artist
-- Instructions
-- Add 3 new Artists to the Artist table. ( It's already created )
        INSERT INTO artist
        (name)
        VALUES
        ('Taylor Swift');
  
-- Select 10 artists in reverse alphabetical order.
        SELECT * FROM artist
        ORDER BY name DESC
        LIMIT 10;
       
-- Select 5 artists in alphabetical order.
        SELECT * FROM artist
        ORDER BY name ASC
        LIMIT 5;
-- Select all artists that start with the word "Black".
        SELECT * FROM artist
        WHERE name LIKE 'Black%';
-- Select all artists that contain the word "Black".
        SELECT * FROM artist
        WHERE name LIKE '%Black%';
-- __________________________________________________________________________________________
-- Table - Employee
-- Instructions
-- List all Employee first and last names only that live in Calgary.
        SELECT FirstName,LastName FROM employee
        WHERE City = 'Calgary';
-- Find the first and last name and birthdate for the youngest employee.
        SELECT FirstName,LastName,Birthdate FROM employee
        ORDER BY Birthdate DESC
        LIMIT 1;

-- Find the first and last name and birthdate for the oldest employee.
        SELECT FirstName,LastName,Birthdate FROM employee
        ORDER BY Birthdate ASC
        LIMIT 1;
-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
        SELECT * FROM employee
        WHERE reportsto = 2;

-- Count how many people live in Lethbridge.
        SELECT * FROM employee
        WHERE city = 'Lethbridge';

-- __________________________________________________________________________________________

-- Table - Invoice
-- Instructions
-- Count how many orders were made from the USA.
        SELECT * FROM invoice
        WHERE billingcountry = 'USA';

-- Find the largest order total amount.
        SELECT Max(total) FROM invoice;
        
-- Find the smallest order total amount.
        SELECT Min(total) FROM invoice;
-- Find all orders bigger than $5.
        SELECT * FROM invoice
        WHERE total >5;
-- Count how many orders were smaller than $5.
        SELECT * FROM invoice
        WHERE total <5;
-- Count how many orders were in CA, TX, or AZ (use IN).
       SELECT * FROM invoice
       WHERE billingstate IN ('CA','TX','AZ');
-- Get the average total of the orders.
        SELECT Avg(total) FROM invoice;
-- Get the total sum of the orders.
        SELECT Sum(total) FROM invoice;
__________________________________________________________________________________________