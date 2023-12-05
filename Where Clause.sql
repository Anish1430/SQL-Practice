create database College;
  use college;
  
  create  table student(
    roll int primary key,
    name varchar(70),
    marks int not null,
    grade varchar(50),
    city varchar(50)
    );
     
     select * 
     from student;
      
      insert into student
      (roll,name,marks,grade,city)
        values
        (101,"anil",78,"C","Pune"),
        (102,"Bhumika",93,"A","Mumbai"),
        (103,"Chetan",85,"B","Mumbai"),
        (104,"dhruv",96,"A","Jharkhand"),
        (105,"sumit",12,"F","Delhi"),
        (106,"farah",82,"B","Delhi");
        
        select distinct city  
        from student;
        
        select *
          from student 
          where marks >= 85;
          
          select city from student where city = "Mumbai";
          
          select * 
          from student
          where marks > 80 AND city = "Mumbai";
          
          /*
              what is AND Operators in SQL ?
			Ans:- It Check for Both the conditions to be True.(Means any of the Condition will be false then it returns False) 
			Using of AND Operator in sql
          */
            select *
           from student 
           where marks > 80 AND city="Mumbai";
           
             /*
              what is OR Operators in SQL ?
		  Ans:- To check for One of the Conditions to be True.(Means ekk v condition true rahega to work krega)
			Using of OR Operator in sql
          */
          
            Select *
		    from student
            where marks > 80 OR city ="Mumbai";
          
           /*
             what is BETWEEN Operator in sql ?
             Ans:- Select from the given Range. (Means inbetween Range like A to B range)..
			Using of 	BETWEEN Operator in sql
          */
          
             select *
			 from student 
             where marks BETWEEN 80 AND 90;
              
               /*
               what is IN operator in SQL ?
               Ans:- Matches any Value in the Specific List.
			Using of IN Operator in sql
          */
          select *
          from student 
          where city IN ("Mumbai","Pune");
          
           /*
           what is NOT operator in SQL ?
           Ans:-To Give The Opposite Result. 
			Using of NOT Operator in sql
          */
          
          select *
          from student
          where city NOT IN("Mumbai","Pune");
          