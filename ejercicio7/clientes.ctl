LOAD DATA
INFILE 'clientes.txt'
INTO TABLE clientes
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  id      INTEGER EXTERNAL,
  nombre  CHAR,
  email   CHAR,
  telefono CHAR,
  ciudad  CHAR
)
