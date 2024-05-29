
create database KIOSCO;

create table PRODUCTOS(
    PRO_ID number not null,
    PRO_NOMBRE varchar (20),
    PRO_CAT_ID number,
    PRO_PRECIO decimal (10,2)
)

insert into(PRO_ID, PRO_NOMBRE, PRO_CAT_ID, PRO_PRECIO)(
    values(1,"chupetin",1,500),
    values(2,"chocolate",1,2000),
    values(3,"gaseosas",1,3500),
    values(4,"caramelo",1,200),
)

alter table PRODUCTOS(
    add constraint PK_PRO_ID primary key (PRO_ID),
    foreign key (PRO_CAT_ID) reference CATEGORIAS (CAT_ID),
)

create table STOCK(
    STO_ID number not null,
    STO_PRO_ID number,
    STO_CANTIDAD number,
)

insert into (STO_ID, STO_PRO_ID, STO_CANTIDAD)(
    values (1,2,60),
    values (2,1,120),
    values (3,4,20),
    values (4,3,15),
)

alter table STOCK(
    add constraint PK_STO_ID primary key (STO_ID),
    foreign key (STO_PRO_ID) reference PRODUCTOS (PRO_ID),
)

create table CATEGORIAS(
    CAT_ID not null,
    CAT_NOMBRE varchar (20);
)

insert into(CAT_ID, CAT_NOMBRE)(
    values (1,"snack")
    values (2,"gaseosas")
)

alter table CATEGORIAS(
    add constraint PK_CAT_ID primary key (CAT_ID),
)