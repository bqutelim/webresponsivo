CREATE DATABASE taller;

USE taller;

CREATE TABLE IF NOT EXISTS marcas (
  mar_id varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  mar_nombre varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (mar_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO marcas (mar_id, mar_nombre) VALUES
('M001', 'Apple'),
('M002', 'Blackberry'),
('M003', 'HTC'),
('M004', 'Motorola'),
('M005', 'Nokia'),
('M006', 'Samsung'),
('M007', 'Sony');

CREATE TABLE IF NOT EXISTS equipos 
(
  equ_id varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  equ_id_marca varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  equ_modelo varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  equ_foto varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  equ_precio float NOT NULL,
  PRIMARY KEY (equ_id),
  KEY fk_equipos_marcas (equ_id_marca)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO equipos (equ_id, equ_id_marca, equ_modelo, equ_foto, equ_precio) VALUES
('E001', 'M001', 'iPad 2', 'appleipad2black.png', 6990),
('E002', 'M001', 'iPad mini', 'appleipadmini.png', 5500),
('E003', 'M001', 'iPhone 5', 'appleiphone5black.png', 8795),
('E004', 'M002', 'Curve 9360', 'blackberrycurve9360.png' ,6570),
('E005', 'M002', 'Z10', 'blackberryz10.png', 7950),
('E006', 'M003', 'One', 'htcone.png', 8650),
('E007', 'M003', 'Windows Phone 8x', 'htcwindowsphone8x.png', 5750),
('E008', 'M004', 'Droid Ultra', 'motoroladroidultra.png', 9575),
('E009', 'M004', 'Razr HD', 'motorolarazrhd.png', 9275),
('E010', 'M005', 'Lumia 920', 'nokialumia920.png', 4595),
('E011', 'M006', 'Galaxy Note 2', 'samsunggalaxynote2.png', 8795),
('E012', 'M006', 'Galaxy S3', 'samsunggalaxys3.png', 7450),
('E013', 'M006', 'Galaxy S4', 'samsunggalaxys4.png', 8950),
('E014', 'M007', 'Xperia Z', 'sonyxperiaz.png', 9250);


ALTER TABLE equipos ADD CONSTRAINT fk_equipos_marcas FOREIGN KEY (equ_id_marca) REFERENCES marcas (mar_id);

