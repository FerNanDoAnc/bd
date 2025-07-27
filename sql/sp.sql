-- Obtener todas las categorías
DELIMITER //
CREATE PROCEDURE GetAllCategories()
BEGIN
  SELECT * FROM Categories;
END;
//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE InsertCategory(
  IN cName VARCHAR(100)
)
BEGIN
  INSERT INTO Categories (Name) VALUES (cName);
END //
DELIMITER ;

-- Obtener categoria por ID
DELIMITER //
CREATE PROCEDURE GetCategoryById(IN cId INT)
BEGIN
  SELECT *
  FROM Categories
  WHERE Id = cId;
END;
//

DELIMITER //
CREATE PROCEDURE UpdateCategory(
  IN cId INT,
  IN cName VARCHAR(100)
)
BEGIN
  UPDATE Categories SET Name = cName WHERE Id = cId;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE DeleteCategory(
  IN cId INT
)
BEGIN
  DELETE FROM Categories WHERE Id = cId;
END //
DELIMITER ;

-- ***************************************************************************************************

-- Obtener todos los productos
DELIMITER //
CREATE PROCEDURE GetAllProducts()
BEGIN
  SELECT p.*, c.Name AS CategoryName
  FROM Products p
  JOIN Categories c ON p.CategoryId = c.Id;
END;
//
DELIMITER ;

-- Insertar un producto
DELIMITER //
CREATE PROCEDURE InsertProduct(
  IN pName VARCHAR(255),
  IN pDescription TEXT,
  IN pPrice DECIMAL(10,2),
  IN pStock INT,
  IN pCategoryId INT
)
BEGIN
  INSERT INTO Products (Name, Description, Price, Stock, CategoryId)
  VALUES (pName, pDescription, pPrice, pStock, pCategoryId);
END;
//
DELIMITER ;

-- Obtener producto por ID
DELIMITER //
CREATE PROCEDURE GetProductById(IN pId INT)
BEGIN
  SELECT p.*, c.Name AS CategoryName
  FROM Products p
  JOIN Categories c ON p.CategoryId = c.Id
  WHERE p.Id = pId;
END;
//

-- Actualizar producto
CREATE PROCEDURE UpdateProduct(
  IN pId INT,
  IN pName VARCHAR(255),
  IN pDescription TEXT,
  IN pPrice DECIMAL(10,2),
  IN pStock INT,
  IN pCategoryId INT
)
BEGIN
  UPDATE Products
  SET
    Name = pName,
    Description = pDescription,
    Price = pPrice,
    Stock = pStock,
    CategoryId = pCategoryId
  WHERE Id = pId;
END;
//

-- Eliminar producto por ID
CREATE PROCEDURE DeleteProduct(IN pId INT)
BEGIN
  DELETE FROM Products WHERE Id = pId;
END;
//
DELIMITER ;
