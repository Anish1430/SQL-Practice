
/*
1. From the following table, write a SQL query to find the details of those salespeople who come from the 'Paris' City or 'Rome' City. 
 Return salesman_id, name, city, commission.

Sample table: salesman

 salesman_id |    name    |   city   | commission 
-------------+------------+----------+------------
        5001 | James Hoog | New York |       0.15
        5002 | Nail Knite | Paris    |       0.13
        5005 | Pit Alex   | London   |       0.11
        5006 | Mc Lyon    | Paris    |       0.14
        5007 | Paul Adam  | Rome     |       0.13
        5003 | Lauson Hen | San Jose |       0.12
*/

SELECT *
from Salesman
WHERE CITY='Paris' OR CITY='Rome';


/*
2. From the following table, write a SQL query to find the details of the salespeople who come from either 'Paris' or 'Rome'. 
Return salesman_id, name, city, commission. 

Sample table: salesman

 salesman_id |    name    |   city   | commission 
-------------+------------+----------+------------
        5001 | James Hoog | New York |       0.15
        5002 | Nail Knite | Paris    |       0.13
        5005 | Pit Alex   | London   |       0.11
        5006 | Mc Lyon    | Paris    |       0.14
        5007 | Paul Adam  | Rome     |       0.13
        5003 | Lauson Hen | San Jose |       0.12
*/
SELECT *
FROM Salesman
WHERE CITY IN('Paris','Rome');


/*
3. From the following table, write a SQL query to find the details of those salespeople who live in cities other than Paris and Rome.
Return salesman_id, name, city, commission.  

Sample table: salesman

 salesman_id |    name    |   city   | commission 
-------------+------------+----------+------------
        5001 | James Hoog | New York |       0.15
        5002 | Nail Knite | Paris    |       0.13
        5005 | Pit Alex   | London   |       0.11
        5006 | Mc Lyon    | Paris    |       0.14
        5007 | Paul Adam  | Rome     |       0.13
        5003 | Lauson Hen | San Jose |       0.12
*/
SELECT *
FROM Salesman
Where CITY NOT In('Paris','Rome');
