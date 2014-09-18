CREATE TABLE products (
ID INTEGER NOT NULL,
NAME VARCHAR NOT NULL,
DESCRIPTION VARCHAR NOT NULL,
CATEGORY VARCHAR NOT NULL,
PRICE FLOAT NOT NULL,
QUANTITY INTEGER NOT NULL,
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

CREATE TABLE ORDERS {
orderId integer generated by default as identity(start with 10000) not null,
orderdate timestamp not null,
customerUsername varchar2 not null,
constraint PK_Orders Primary(OrderId),
contraint FK_Orders Foreign(customerusername) references customer(username)
}