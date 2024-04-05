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

 -- 9= From the following table, write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city.  
    
     select name
     from orders where city = "Paris";
 
 /*
   10. From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.
    Sample table: customer

 customer_id |   cust_name    |    city    | grade | salesman_id 
-------------+----------------+------------+-------+-------------
        3002 | Nick Rimando   | New York   |   100 |        5001
        3007 | Brad Davis     | New York   |   200 |        5001
        3005 | Graham Zusi    | California |   200 |        5002
        3008 | Julian Green   | London     |   300 |        5002
        3004 | Fabian Johnson | Paris      |   300 |        5006
        3009 | Geoff Cameron  | Berlin     |   100 |        5003
        3003 | Jozy Altidor   | Moscow     |   200 |        5007
        3001 | Brad Guzan     | London     |   300 |        5005
*/
      select *
    from customer
    where grade = 200;



 /*
 11= From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. 
  Return ord_no, ord_date, purch_amt.  
Sample table: orders

ord_no      purch_amt   ord_date    customer_id  salesman_id
----------  ----------  ----------  -----------  -----------
70001       150.5       2012-10-05  3005         5002
70009       270.65      2012-09-10  3001         5005
70002       65.26       2012-10-05  3002         5001
70004       110.5       2012-08-17  3009         5003
70007       948.5       2012-09-10  3005         5002
70005       2400.6      2012-07-27  3007         5001
70008       5760        2012-09-10  3002         5001
70010       1983.43     2012-10-10  3004         5006
70003       2480.4      2012-10-10  3009         5003
70012       250.45      2012-06-27  3008         5002
70011       75.29       2012-08-17  3003         5007
70013       3045.6      2012-04-25  3002         5001

*/ 
select ord_no,ord_date,purch_amt
from orders
where  salesman_Id =5001;


 /*
 12= From the following table, write a SQL query to find the Nobel Prize winner(s) for the year 1970.Return year,subject and winner. 
Sample table: nobel_win

YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
---- ------------------------- --------------------------------------------- ------------------------- ------------
1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
1970 Physics                   Louis Neel                                    France                 Scientist
1970 Chemistry                 Luis Federico Leloir                          France                 Scientist
1970 Physiology                Ulf von Euler                                 Sweden                 Scientist
1970 Physiology                Bernard Katz                                  Germany                Scientist
1970 Literature                Aleksandr Solzhenitsyn                        Russia                 Linguist
1970 Economics                 Paul Samuelson                                USA                    Economist
1970 Physiology                Julius Axelrod                                USA                    Scientist
1971 Physics                   Dennis Gabor                                  Hungary                Scientist
1971 Chemistry                 Gerhard Herzberg                              Germany                Scientist
1971 Peace                     Willy Brandt                                  Germany                Chancellor
1971 Literature                Pablo Neruda                                  Chile                  Linguist
1971 Economics                 Simon Kuznets                                 Russia                 Economist
1978 Peace                     Anwar al-Sadat                                Egypt                  President
1978 Peace                     Menachem Begin                                Israel                 Prime Minister
1987 Chemistry                 Donald J. Cram                                USA                    Scientist
1987 Chemistry                 Jean-Marie Lehn                               France                 Scientist
1987 Physiology                Susumu Tonegawa                               Japan                  Scientist
1994 Economics                 Reinhard Selten                               Germany                Economist
1994 Peace                     Yitzhak Rabin                                 Israel                 Prime Minister
1987 Physics                   Johannes Georg Bednorz                        Germany                Scientist
1987 Literature                Joseph Brodsky                                Russia                 Linguist
1987 Economics                 Robert Solow                                  USA                    Economist
1994 Literature                Kenzaburo Oe                                  Japan                  Scientist

*/

  select year,subject,winner
  from nobel_win 
  where year=1970;



/*
13=  From the following table, write a SQL query to find the Nobel Prize winner in ‘Literature’ for 1971. Return winner.
Sample table: nobel_win

YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
---- ------------------------- --------------------------------------------- ------------------------- ------------
1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
1970 Physics                   Louis Neel                                    France                 Scientist
1970 Chemistry                 Luis Federico Leloir                          France                 Scientist
1970 Physiology                Ulf von Euler                                 Sweden                 Scientist
1970 Physiology                Bernard Katz                                  Germany                Scientist
1970 Literature                Aleksandr Solzhenitsyn                        Russia                 Linguist
1970 Economics                 Paul Samuelson                                USA                    Economist
1970 Physiology                Julius Axelrod                                USA                    Scientist
1971 Physics                   Dennis Gabor                                  Hungary                Scientist
1971 Chemistry                 Gerhard Herzberg                              Germany                Scientist
1971 Peace                     Willy Brandt                                  Germany                Chancellor
1971 Literature                Pablo Neruda                                  Chile                  Linguist
1971 Economics                 Simon Kuznets                                 Russia                 Economist
1978 Peace                     Anwar al-Sadat                                Egypt                  President
1978 Peace                     Menachem Begin                                Israel                 Prime Minister
1987 Chemistry                 Donald J. Cram                                USA                    Scientist
1987 Chemistry                 Jean-Marie Lehn                               France                 Scientist
1987 Physiology                Susumu Tonegawa                               Japan                  Scientist
1994 Economics                 Reinhard Selten                               Germany                Economist
1994 Peace                     Yitzhak Rabin                                 Israel                 Prime Minister
1987 Physics                   Johannes Georg Bednorz                        Germany                Scientist
1987 Literature                Joseph Brodsky                                Russia                 Linguist
1987 Economics                 Robert Solow                                  USA                    Economist
1994 Literature                Kenzaburo Oe                                  Japan                  Linguist

*/

select winner 
from nobel_win
where Year=1971 AND subject='Literature';
