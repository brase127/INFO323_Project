CREATE TABLE products (
ID INTEGER NOT NULL,
NAME VARCHAR NOT NULL,
DESCRIPTION VARCHAR NOT NULL,
CATEGORY VARCHAR NOT NULL,
PRICE FLOAT NOT NULL,
QUANTITY INTEGER NOT NULL check (Quantity>=0),
PHOTO Varchar,
CONSTRAINT PK_PRODUCTS PRIMARY KEY(ID)
);

CREATE TABLE CUSTOMERS (
USERNAME Varchar2 NOT NULL,
NAME VARCHAR2 NOT NULL,
ADDRESS VARCHAR2 NOT NULL,
CREDITCARDDETAILS VARCHAR NOT NULL,
PASSWORD VARCHAR2 NOT NULL,
EMAIL VARCHAR2 NOT NULL,
CONSTRAINT PK_CUSTOMERS PRIMARY KEY(USERNAME)
)

create table orders (
   orderId integer generated by default as identity (start with 1000) not null,
   date timestamp not null,
   customer varchar not null,

   constraint pk_orders primary key (orderId),
   constraint fk_orders_customers foreign key (customer) references customers(username)
);

create table orderitems (
   orderId integer not null,
   ID varchar not null,
   quantity double not null,
   constraint pk_orderitems primary key (orderId, ID),
   constraint fk_orderitems_orders foreign key (orderId) references orders(orderId),
   constraint fk_orderitems_products foreign key (ID) references products(ID)
);

