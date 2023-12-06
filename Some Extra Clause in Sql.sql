        use college;
        
        /*
           what is LIMIT CLAUESE in SQL ?
             Ans:- Sets an upper Limit on Number of rows to be Returned.
			Using of LIMIT Clause in sql
          */
          SELECT *
          FROM student
          WHERE marks > 90
          Limit 3;
          
          /*
           what is ORDER  CLAUESE in SQL ?
            Ans:- To Sort the Data in Ascending(ASC) Order or Descending(DESC) Order.
			Using of ORDER Clause in sql
          */
          
            SELECT *
            FROM student
			where marks > 70
			ORDER by marks ASC;
          
          /*
           what is  AGGREGATE FUNCTION in SQL ?
            Ans:- Aggregate Function perform a calculation based on a "Set of Value" and return a "Single Value";
              1> COUNT(),MAX(),MIN(),SUM(),AVG() ETC..........
			Using of AGGREGATE FUNCTION in sql
            
          */
            
            /* COUNT BASED EXAMPLE .....
              get maximum marks of Student...
              */
              
           SELECT max(marks)
			from student;
          
          /* COUNT BASED EXAMPLE .....
              get minimum marks of Student...
              */
              
              SELECT min(marks)
              from student;
          
          /* COUNT BASED EXAMPLE .....
              get total  count  of Student...
              */
              
              SELECT count(roll)
                from student;
                
                /* COUNT BASED EXAMPLE .....
              get avg marks of Student...
              */
              
              SELECT AVG(marks)
              from student;
              
              /*
           what is GROUP BY  CLAUESE in SQL ?
            ans:- Groups rows,that have the same values into summary rows.
               * Applying some Condition based on rows.
              * generally Group by clause is often is used with Aggregate function(count(),max(),min(),avg() etc)..
			Using of GROUP BY Clause in sql
          */
              SELECT city , max(marks)
              from student
              Group by city;
              
              /*
              Question:- Write a query to find avg marks in each city in Ascending order 
              */
              
               select city, avg(marks)
				from student
                GROUP BY CITY;
                
                /*
           what is Having CLAUESE in SQL ?
            Ans:- Having Clause is Similar to Where Clause,but Applies after Group By Clause...
              *   Applying some Condition based on Group by Clause .....
			Using of Having Clause in sql
          */
          
           /* Count number of student in each city where max marks cross 90 ...*/
           
           SELECT city , count(name)
             from student
            group by city
            having max(marks) > 85;
           
            