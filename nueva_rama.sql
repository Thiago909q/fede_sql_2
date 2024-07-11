create table PRODUCTOS(
    PRO_ID not null,
    PRO_NOMBRE varchar(25),
    PRO_CAT_ID number,
    PRO_PRECIO decimal (10,2),
)

insert into (PRO_ID,PRO_NOMBRE,PRO_CAT_ID,PRO_PRECIO)(
    value (1,"martillo",1,30000),
    value (2,"taladro",2,60000),
    value (3,"tornillo",3,1500),
    value (4,"arandela",3,2000),
)

alter table PRODUCTOS(
    add constraint PK_PRO_ID primary key (PRO_ID),
    foreign key (PRO_CAT_ID) refernce CATEGORIAS (CAT_ID),
)

create table STOCK (
    STO_ID not null,
    STO_PRO_ID number,
    STO_SUC_ID number,
    STO_CANTIDAD number,
)

insert into (STO_ID,STO_PRO_ID,STO_SUC_ID,STO_CANTIDAD)(
    value (1,1,2,200),
    value (2,1,1,50),
    value (3,1,3,300),
    value (4,4,1,500),
)

alter table STOCK(
    add constraint PK_STO_ID primary key (STO_ID),
    foreign key (STO_PRO_ID) refernce PRODUCTOS (PRO_ID),
    foreign key (STO_CAT_ID) refernce CATEGORIAS (CAT_ID),
)

create table SUCURSALES(
    SUC_ID not null,
    SUC_NOMBRE varchar (25),
)

insert into (SUC_ID,SUC_NOMBRE)(
    value (1,"bolivar"),
    value (2,"olavarria"),
    value (3,"neuquen"),
)

alter table SUCURSALES(
    add constraint PK_SUC_ID primary key (SUC_ID),
)

create table CATEGORIAS(
    CAT_ID not null,
    CAT_NOMBRE varchar (25),
)

insert into (CAT_ID,CAT_NOMBRE)(
    values (1,"herramientas")
    values (2,"herramientas electricas")
    values (3,"otros")
)


alter table CATEGORIAS(
    add constraint PK_CAT_ID primary key (CAT_ID)
)