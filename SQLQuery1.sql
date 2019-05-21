--agregue esta linea de prueba
--esta linea la agrego su papa
--aqui esta la mia luis
create database luis_Robles

select * from Datos_persona

create table persona (
id varchar (5) primary key,
nombre varchar (50) not null ,
ApellidoPaterno varchar (50) not null,
ApellidoMaterno varchar (50) ,
FechaRegistro date not null 
)

select* from persona


alter table persona
add constraint df_fechaRegistro default getdate() for fechaRegistro

insert into persona values
('4009','Luis','Robles','Blanco',03-28-2000),
('4005','Juan','Perez','Leon',DEFAULT),
('4015','Jose','Cota','Ramos',DEFAULT)

create table cuenta(
idCuenta numeric,
tipoCuenta varchar(50) not null,
idCliente varchar(5)
)
select *from cuenta

alter table cuenta 
--alter column idCuenta numeric not null
--add constraint PK_idCuenta primary key (idCuenta)
add constraint FK_idCliente foreign key (idCliente) references persona(id)
--add constraint CK_idCuenta CHECK (len(idCuenta)=16)

insert into cuenta values ('1234123412341234','universitaria','12345')
