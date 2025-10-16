/******************************************************************************
Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
/* Enter your sql queries here */
se rod;

create table tab_cliente(
id_cliente INT (5) primary key auto_increment,
nome_cliente VARCHAR(50),
data_nasc DATE,
CPF VARCHAR(15),
telefone VARCHAR(20)
);

select * from tab_cliente

insert into tab_cliente (nome_cliente, data_nasc, cpf, telefone)
values ('Rodrigo Pereira', '2007-04-18', '123.456.344-54', '3298841890');

select * from tab_cliente

create table endereco_cliente(
id_endereco INT(5) primary key auto_increment,
id_cliente INT(5),
endereco VARCHAR(100),
numero VARCHAR(10),
bairro VARCHAR(50),
cidade VARCHAR(100),
UF VARCHAR (2)
);

insert into endereco_cliente(id_cliente, endereco, numero, bairro, cidade, UF)
values ('1', 'Rua ostende ribeiro', '20', 'cataguases', 'MG')

select * from tab_cliente
select * from endereco_cliente

select C.nome_cliente, C.data_nasc, E.endereco, E.cidade
from tab_cliente C
inner join endereco_cliente E On ( C.id_cliente = E.id_cliente )