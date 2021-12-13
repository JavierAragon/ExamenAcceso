DROP DATABASE IF EXISTS gestionPedidosBD;
CREATE DATABASE IF NOT EXISTS gestionPedidosBD;
USE gestionPedidosBD;
DROP TABLE IF EXISTS cliente;

CREATE TABLE cliente (
	id int(10) NOT NULL auto_increment PRIMARY KEY,
    nombre varchar(35) default NULL,
	apellido varchar(35) default NULL,
	email varchar(45) default NULL
)   ENGINE=InnoDB AUTO_INCREMENT=6;
    
CREATE TABLE pedido (
	idpedido int(10) NOT NULL auto_increment PRIMARY KEY,
    numpedido varchar(6) default NULL,
    fecha date default NULL,
    importe NUMERIC(20, 2) default null,
    descuento NUMERIC(20, 2) default null,
    idcliente int not null
);
ALTER TABLE pedido
ADD FOREIGN KEY (idcliente) REFERENCES cliente(id);

CREATE TABLE articulo (
	idarticulo int(10) NOT NULL auto_increment PRIMARY KEY,
    nomarticulo varchar(20) default NULL,
    descriparticulo varchar(50) default NULL,
    stockarticulo int(10) default null,
    precioarticulo NUMERIC(20, 2) default null,
	INDEX(nomarticulo));



LOCK TABLES cliente WRITE;

insert into cliente VALUES
	(1,'David','Martinez','david@amazon.es'),
	(2,'Sandra','López','sandra@amazon.es'),
	(3,'Maria','Gómez','maria@amazon.es'),
	(4,'Antonio','Fernández','antonio@amazon.es'),
	(5,'Alicia','Martín','alicia@amazon.es');
    
UNLOCK TABLES;

	LOCK TABLES pedido WRITE;
    
insert into pedido VALUES
    (1,'23232L','2020-05-10','20.30','10.1',2),
    (2,'23314L','1998-02-20','20.30','10.1',1),
    (3,'23314L','2002-01-07','20.30','10.1',4),
    (4,'2JKS4L','2000-05-30','20','10.1',1);
  
    
    UNLOCK TABLES;
    
LOCK TABLES articulo WRITE;

insert into articulo VALUES
	(1,'PS5','Maquina superguapa PS5',100,'499.99'),
	(2,'XBOX','Maquina superguapa XBOX',200,'399.99'),
	(3,'NINTENDO SWITCH','Maquina superguapa portable NINTENDO SWITCH',50,'299.99'),
	(4,'PSP','Maquina superguapa portable PSP',100,'99.99'),
	(5,'ORDENADOR','Ordenador superguapo',300,'1299.99');
    
UNLOCK TABLES;


select * from cliente;
select * from pedido;
select * from articulo;

CREATE INDEX nombre_del_articulo ON articulo(nomarticulo);
SELECT * FROM articulo USE INDEX(nombre_del_articulo);



SELECT nombre, fecha, idcliente, id, numpedido 
FROM cliente
INNER JOIN pedido
ON cliente.id = pedido.idcliente
WHERE idcliente=1; 

SELECT *
FROM cliente
INNER JOIN pedido
ON cliente.id = pedido.idcliente;

drop view IF EXISTS vta_Pedidos;
CREATE VIEW vta_Pedidos
AS SELECT *
FROM cliente
INNER JOIN pedido
ON cliente.id = pedido.idcliente
ORDER BY fecha DESC;

select * from vta_Pedidos;

drop view IF EXISTS vta_Articulos;
CREATE VIEW vta_Articulos
AS SELECT *
FROM articulo
ORDER BY nomarticulo ASC;

select * from vta_Articulos;









