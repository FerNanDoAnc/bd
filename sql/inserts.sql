
-- Categorías (por si aún no están insertadas)
INSERT INTO Categories (Name) VALUES
('Electrodomésticos'),
('Ropa'),
('Limpieza'),
('Tecnología'),
('Juguetería'),
('Hogar');
-- Productos por categoría
-- Electrodomésticos (CategoriaId = 1)
INSERT INTO Products (Name, Description, Price, Stock, CategoryId) VALUES
('Refrigeradora', 'Refrigeradora de dos puertas', 1500.00, 5, 1),
('Microondas', 'Microondas digital con grill', 400.00, 10, 1),
('Licuadora', 'Licuadora de 3 velocidades', 120.00, 15, 1),
('Horno Eléctrico', 'Horno con capacidad para 25L', 350.00, 8, 1),
('Ventilador de pie', 'Ventilador con 3 velocidades', 180.00, 12, 1),
('Aspiradora', 'Aspiradora ciclónica sin bolsa', 700.00, 6, 1);
-- Ropa (CategoriaId = 2)
INSERT INTO Products (Name, Description, Price, Stock, CategoryId) VALUES
('Camisa manga larga', 'Camisa de algodón', 80.00, 20, 2),
('Pantalón jean', 'Jean slim fit para hombre', 120.00, 25, 2),
('Vestido casual', 'Vestido para uso diario', 150.00, 10, 2),
('Zapatillas deportivas', 'Zapatillas para correr', 200.00, 30, 2),
('Casaca de cuero', 'Casaca sintética estilo biker', 250.00, 5, 2),
('Blusa estampada', 'Blusa con diseño floral', 95.00, 18, 2);
-- Limpieza (CategoriaId = 3)
INSERT INTO Products (Name, Description, Price, Stock, CategoryId) VALUES
('Detergente líquido', 'Detergente para ropa 3L', 25.50, 50, 3),
('Lejía', 'Desinfectante multiusos', 12.00, 40, 3),
('Limpiavidrios', 'Spray limpiador para ventanas', 18.00, 25, 3),
('Desinfectante de pisos', 'Limpieza profunda y aroma duradero', 22.00, 30, 3),
('Guantes de limpieza', 'Guantes de látex reutilizables', 15.00, 100, 3),
('Paños de microfibra', 'Pack de 3 paños multiusos', 20.00, 60, 3);
-- Tecnología (CategoriaId = 4)
INSERT INTO Products (Name, Description, Price, Stock, CategoryId) VALUES
('Smartphone Android', 'Teléfono inteligente con 128GB', 1200.00, 10, 4),
('Laptop 15 pulgadas', 'Laptop con 16GB RAM y SSD', 3200.00, 7, 4),
('Tablet 10"', 'Pantalla táctil con Android 12', 950.00, 12, 4),
('Mouse inalámbrico', 'Mouse óptico Bluetooth', 70.00, 40, 4),
('Teclado mecánico', 'Teclado retroiluminado gamer', 180.00, 22, 4),
('Monitor 24"', 'Monitor LED Full HD', 550.00, 9, 4);
-- Juguetería (CategoriaId = 5)
INSERT INTO Products (Name, Description, Price, Stock, CategoryId) VALUES
('Muñeca articulada', 'Muñeca con accesorios', 95.00, 30, 5),
('Lego Star Wars', 'Set de nave espacial', 250.00, 15, 5),
('Pista de autos', 'Pista armable con 2 autos', 180.00, 20, 5),
('Pelota de fútbol', 'Balón de entrenamiento', 75.00, 35, 5),
('Rompecabezas 1000 piezas', 'Puzzle de paisaje', 65.00, 28, 5),
('Set de plastilinas', 'Colores surtidos no tóxicos', 45.00, 50, 5);
-- Hogar (CategoriaId = 6)
INSERT INTO Products (Name, Description, Price, Stock, CategoryId) VALUES
('Almohada viscoelástica', 'Ergonómica para el cuello', 60.00, 25, 6),
('Juego de sábanas', '2 plazas de algodón', 110.00, 18, 6),
('Cortinas blackout', 'Bloquean luz y calor', 200.00, 10, 6),
('Lampara de mesa', 'LED recargable', 85.00, 16, 6),
('Tapete antideslizante', 'Para baño o cocina', 40.00, 30, 6),
('Reloj de pared', 'Diseño moderno', 75.00, 22, 6);
