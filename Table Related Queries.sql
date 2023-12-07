/*
    Table Releated Queries .....
    Update(To Update Existing Queries....
*/

use college;

select * 
from student;

/*
  Use this Keywords for off thye Safe Mode 
  */
SET SQL_SAFE_UPDATES =0;

  /*
     To Update Something In a Table :-
     
       Update Table_name
      set col1=Val1,col2=Var2
       where condition;
  */
 update student
 set grade ="Anish"
 where grade ="0";
 
 select * from student;
 
 /*
 UPDATE THE MARKS WHICH IS LESS THAN 20.....FOR 65...
  */
 update student
 set marks="65"
 where marks <= 20;
 
 
 UPDATE student
 set grade="B"
 where marks between  80 AND  90;
 
 
 
 select * from student;
 UPDATE student
 set grade="C"
 where marks between 70 AND 80;
 
 UPDATE student
 set grade="A"
 where marks between  90 AND  100;
 
 /*
 let the Marks Greater Than One for All th Student .....
  */
    Update student
    set marks=marks + 1;
    
    select * 
    from student;
    
    update student
    set marks="15"
    where marks="66";
    
    /*
      Delete related Queries in sql
       To delete Existing Rows ....
  */
  delete from student
  where marks < 20; 