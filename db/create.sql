--
-- create tables
--
-- Maak de color tabel aan
CREATE TABLE color (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

-- Maak de products tabel aan met een color_id kolom
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  color_id INTEGER,
  price NUMERIC (10,2)
);
CREATE TABLE product_colors (
  product_id INTEGER,
  color_id INTEGER,
  PRIMARY KEY (product_id, color_id),
  FOREIGN KEY (product_id) REFERENCES products(id),
  FOREIGN KEY (color_id) REFERENCES color(id)
);

INSERT INTO product_colors (product_id, color_id)
VALUES (2, 3);  -- Koppel BMW XM aan de kleur rood
INSERT INTO product_colors (product_id, color_id)
VALUES (2, 4);  -- Koppel BMW XM aan de kleur zwart


-- Voeg kleuren toe aan de color tabel
INSERT INTO color (name) VALUES ('grijs');
INSERT INTO color (name) VALUES ('wit');
INSERT INTO color (name) VALUES ('rood');
INSERT INTO color (name) VALUES ('zwart');





INSERT INTO products (name, description, code, color_id, price) 
VALUES ('Renault E space sport', 'De mooist elektrice op de markt.', '816905633-0', 1, 49000);


INSERT INTO products (name, description, code, color_id, price) 
VALUES ('BMW XM', 'BMW dikste SUV Samons favoriet.', '077030122-3', 2, 210000);


INSERT INTO products (name, description, code, color_id, price) 
VALUES ('Mercedes gle 63s amg', 'Mooiste mercedes op de markt volgens Alex.', '445924201-X', 2, 270000);


INSERT INTO products (name, description, code, color_id, price) 
VALUES ('Range Rover Sport S' ,'betaalbare luxe SUV met een enorme kracht vermogen.', '693155505-7', 3, 140000);

INSERT INTO products (name, description, code, color_id, price) 
VALUES ('Audi RS Q8', 'sport SUV net enorme kracht en een vurige look.', '686928463-6', 4, 262000);


INSERT INTO products (name, description, code, color_id, price) 
VALUES ('Golf GTI club sport', 'Middenklasse auto, enorm kracht voor een kleine auto. Blaast weg', '492662523-7', 1, 70000);




