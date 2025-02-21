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
  merk_id INTEGER,
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

CREATE TABLE merken ( 
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
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
INSERT INTO color (name) VALUES ('beige');
-- Voeg merken toe aan de merken tabel
INSERT INTO merken (name) VALUES ('Mercedes');
INSERT INTO merken (name) VALUES ('BMW');
INSERT INTO merken (name) VALUES ('Lamborghini');
INSERT INTO merken (name) VALUES ('Renault');
INSERT INTO merken (name) VALUES ('Audi');
INSERT INTO merken (name) VALUES ('Porsche');
INSERT INTO merken (name) VALUES ('Golf');
INSERT INTO merken (name) VALUES ('Range Rover');



INSERT INTO products (merk_id, name, description, code, color_id, price) 
VALUES (4, 'E space sport', 'De mooist elektrice op de markt.', '816905633-0', 1, 49000);


INSERT INTO products (merk_id, name, description, code, color_id, price) 
VALUES (2, 'XM', 'BMW dikste SUV Samons favoriet.', '077030122-3', 3, 210000);


INSERT INTO products (merk_id, name, description, code, color_id, price) 
VALUES (1, 'gle 63s amg', 'Mooiste mercedes op de markt volgens Alex.', '445924201-X', 2, 270000);


INSERT INTO products (merk_id, name, description, code, color_id, price) 
VALUES (8, 'Sport S' ,'betaalbare luxe SUV met een enorme kracht vermogen.', '693155505-7', 3, 140000);

INSERT INTO products (merk_id, name, description, code, color_id, price) 
VALUES (5, 'RS Q8', 'sport SUV net enorme kracht en een vurige look.', '686928463-6', 4, 262000);


INSERT INTO products (merk_id, name, description, code, color_id, price) 
VALUES (7, 'GTI club sport', 'Middenklasse auto, enorm kracht voor een kleine auto. Blaast weg', '492662523-7', 1, 35000);

INSERT INTO products (merk_id, name, description, code, color_id, price) 
VALUES (6, 'Panamera GTS', 'luxe sedan met een hele grote perfomance. Staat bekend om zijn snelheid', '48392523-7', 1, 245000);

INSERT INTO products (merk_id, name, description, code, color_id, price) 
VALUES (3, 'revuelto', 'nieuwste lamborghini met enorm veel tech aan boord, voelt als een vliegtuig', '2013204283-7', 13,640000);


INSERT INTO products (merk_id, name, description, code, color_id, price) 
VALUES (1, 'benz s class', 'de meest luxste auto onder de mercedes (sommige vinden zelfs onder de autos) meestal gebruikt door hoge politcus', '27398230-7', 5, 350000);

INSERT INTO products (merk_id, name, description, code, color_id, price) 
VALUES (2, 'BMW M5 CS', 'nieuwste M5 serie BMW snelste van de modellen gaat mega snel met super veel kracht en tech aan boord', '42347239-7', 1, 226720);