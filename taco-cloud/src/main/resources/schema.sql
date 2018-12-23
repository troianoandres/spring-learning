create table if not exists ingredients (
    id varchar(4) not null,
    name varchar(25) not null,
    type varchar(10) not null
);

create table if not exists tacos (
    id identity,
    name varchar(50) not null,
    createdAt timestamp not null
);

create table if not exists tacos_ingredients (
    taco bigint not null,
    ingredient varchar(4) not null
);

alter table tacos_ingredients add foreign key (taco) references tacos(id);

alter table tacos_ingredients add foreign key (ingredient) references ingredients(id);

create table if not exists orders (
    id identity,
    deliveryName varchar(50) not null,
    deliveryStreet varchar(50) not null,
    deliveryCity varchar(50) not null,
    deliveryState varchar(2) not null,
    deliveryZip varchar(10) not null,
    ccNumber varchar(16) not null,
    ccExpiration varchar(5) not null,
    ccCVV varchar(3) not null,
    placedAt timestamp not null
);

create table if not exists orders_tacos (
    tacoOrder bigint not null,
    taco bigint not null
);

alter table orders_tacos add foreign key (tacoOrder) references orders(id);

alter table orders_tacos add foreign key (taco) references tacos(id);