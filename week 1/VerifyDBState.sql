-- Arthur Kemp

-- check which users have access to the database
SELECT USER_ID, USERNAME, CREATED, PASSWORD_CHANGE_DATE
FROM USER_USERS;

-- check what tables are in the database
SELECT *
FROM USER_TABLES;

-- examine the design of each table
DESCRIBE Orders;
DESCRIBE ProductList;
DESCRIBE Reviews;
DESCRIBE StoreFront;
DESCRIBE UserBase;
DESCRIBE UserLibrary;

-- display all data present in the database
SELECT * FROM Orders;
SELECT * FROM ProductList;
SELECT * FROM Reviews;
SELECT * FROM StoreFront;
SELECT * FROM UserBase;
SELECT * FROM UserLibrary;

-- check constraints used in database
SELECT TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE, STATUS
FROM USER_CONSTRAINTS;

-- check what views are present in database
SELECT VIEW_NAME, TEXT
FROM USER_VIEWS;

-- display all usernames in ascending order
SELECT UserName
FROM UserBase
ORDER BY UserName ASC;

-- display first and last name of each user utilizing a yahoo email address
SELECT FirstName, LastName, UserName, Password, Email
FROM UserBase
WHERE Email LIKE '%@yahoo.com';

-- display username, birthday, and wallet funds of a user with less than $25
SELECT UserName, Birthday, WalletFunds
FROM UserBase
WHERE WalletFunds < 25.00;

-- display userid and productcode of user who has more than 100 hours played
SELECT UserID, ProductCode
FROM UserLibrary
WHERE HoursPlayed > 100;

-- display productcode of any game with less than 10 hours played
SELECT ProductCode
FROM UserLibrary
WHERE HoursPlayed < 10;

-- display all unique publishers
SELECT DISTINCT Publisher
FROM ProductList;

-- display product name, release date, publisher and genre, sorted by genre
SELECT ProductName, ReleaseDate, Publisher, Genre
FROM ProductList
ORDER BY Genre ASC;

-- display product code and publisher of any products in the strategy genre
SELECT ProductCode, Publisher
FROM ProductList
WHERE Genre = 'Strategy';

-- display product code, description, and price for any product that costs more than $25, sorted by price descending
SELECT ProductCode, Description, Price
FROM StoreFront
WHERE Price > 25
ORDER BY Price DESC;

-- display inventory ID, and price of all products in storefront table, sort by price ascending
SELECT InventoryID, Price
FROM StoreFront
ORDER BY Price ASC;

-- display product code and review of any product with a rating of 1
SELECT ProductCode, Review
FROM Reviews
WHERE Rating = 1;

-- display product code and review of any product with a rating of 4 or higher.
SELECT ProductCode, Review
FROM Reviews
WHERE Rating >= 4;

--display every unique userID that has placed an order
SELECT DISTINCT UserID
FROM Orders;

-- Display all order data, sorted by the earliest purchase date
SELECT *
FROM Orders
ORDER BY PurchaseDate ASC;

