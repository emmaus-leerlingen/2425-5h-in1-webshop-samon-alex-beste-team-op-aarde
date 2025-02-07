--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Renault E space sport', 'De mooist elektrice op de markt.', '816905633-0', 49000);
insert into products (name, description, code, price) values ('BMW XM', 'BMW dikste SUV Samons favoriet.', '077030122-3', 210000);
insert into products (name, description, code, price) values ('Mercedes gle 63s amg', 'Mooiste mercedes op de markt volgens Alex.', '445924201-X', 270000);
insert into products (name, description, code, price) values ('Range Rover Sport S' ,'betaalbare luxe SUV met een enorme kracht vermogen.', '693155505-7', 140000);
insert into products (name, description, code, price) values ('Audi RS Q8', 'sport SUV net enorme kracht en een vurige look.', '686928463-6', 262000);
insert into products (name, description, code, price) values ('Golf GTI club sport', ' Middenklasse auto, enorm kracht voor een kleine auto. Blaast weg', '492662523-7', 70000);

