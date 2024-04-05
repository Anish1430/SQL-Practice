create database users;
use Users;

create table orders(
   salesman_id int auto_increment primary key ,
   name Varchar(50), 
   city Varchar(20),
   commission float
);

INSERT INTO orders (salesman_id, name, city, commission)
VALUES
    (5001, 'James Hoog', 'New York', 0.15),
    (5002, 'Nail Knite', 'Paris', 0.13),
    (5005, 'Pit Alex', 'London', 0.11),
    (5006, 'Mc Lyon', 'Paris', 0.14),
    (5007, 'Paul Adam', 'Rome', 0.13),
    (5003, 'Lauson Hen', 'San Jose', 0.12);
    
    select * from orders;

  -- 2 =Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution"
   select "This is SQL Exercise , Practice and Solution" 
      from orders;

  -- 3= Write a SQL query to display three numbers in three columns. 
    select 10,20,30
    from orders;

 -- 4= Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server
     select 10 + 20 
     from orders;

-- 5= Write an SQL query to display the result of an arithmetic expression.
      select (10 + 15) - (5 * 2)
      from orders;
     
 -- 6= Write a SQL statement to display specific columns such as names and commissions for all salespeople.  
     
       select name,commission
       from orders;

       
  /* 7= Write a query to display the columns in a specific order, such as commission, salesman_ID, name,city, 
        and purchase amount for all orders.
 */   
    select Commission,salesman_Id,name,city
    from orders;

-- 8= Write a query to display the distinct salesman_Id.......

  select Distinct(salesman_Id)
  from orders;
