create Database Film_Magic;
use Film_Magic;

create table Empleado(
	Codigo_Empleado varchar(15) primary key,
    CUI_Empleado varchar(15) not null,
    Nombre_Empleado varchar(25) not null,
    Apellido_Empleado varchar(25) not null,
    Genero_Empleado char(1) not null,
    Telefono_Empleado int,
    Direccion_Empleado varchar(80),
    Estado_Empleado char(1)
)engine= InnoDB;

create table Cliente(
	Codigo_Cliente varchar(15) primary key,
    CUI_Cliente varchar(15) not null,
    Nombre_Cliente varchar(25) not null,
    Apellido_Cliente varchar(25) not null,
    Telefono_Cliente int,
    Estado_Tarjeta_Cliente char(1) not null,
    
    Codigo_Empleado varchar(15),
    foreign key (Codigo_Empleado) references Empleado(Codigo_Empleado)
)engine=InnoDB;

create table Autor(
	ID_Autor varchar(15) primary key,
    Nombre_Autor varchar(50) not null,
    Apellido_Autor varchar(50) not null,
    Ciudad_Nacimiento varchar(80) not null
)engine=InnoDB;

create table Producto(
	ID_Producto varchar(20) primary	key,
    Nombre_Producto varchar(35) not null,
    -- Marca_Producto varchar(20) not null,
    Tipo_Producto varchar(50) not null,
    Precio_Producto float not null,
    Existencias_Producto int not null,
    Estado_Producto char(1),
	ID_Autor varchar(15),

    foreign key (ID_Autor) references Autor(ID_Autor)
)engine=InnoDB;