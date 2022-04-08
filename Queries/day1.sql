--This is how you write comment in sql
--single line comment look like this
/*
 This is how you write
 multi line comment
 */

--each query you write known as sql statement
--* means all, here it means all columns
--from sometable that exist in the database
/*
 Just like java, SQL Statements end in
 semi colon ; and it is mandatory
 */
SELECT * FROM REGIONS ;
--If you want to run second statement
--you just need to click the query to focus your cursor and click run
SELECT * FROM COUNTRIES;

SELECT * FROM LOCATIONS;

SELECT * FROM DEPARTMENTS;

SELECT * FROM JOBS;

SELECT * FROM EMPLOYEES;


--RESTRICTING COLUMNS IN THE RESULT
--SQL IS SPACE INSENSITIVE
SELECT FIRST_NAME
 FROM EMPLOYEES ;

--More than one columns can be specified seperated by comma  ,

SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES;

/*
 Only getting unique value from the result
 for example, only get unique first name from employees table
 */

 SELECT DISTINCT FIRST_NAME FROM EMPLOYEES;

 --get only unique last names
 SELECT DISTINCT LAST_NAME FROM EMPLOYEES;


 --RESTRICTING ROWS IN THE RESULT USING WHERE CLAUSE

 --OPERATORS ;  <>,!= ---------> MEANS NOT EQUAL
-- in SQl we use single quote for string.
-- values are case sensitive!!!!!!

SELECT * FROM EMPLOYEES WHERE FIRST_NAME = 'Ellen';

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES WHERE SALARY = 11000.00;


--LOGICAL AND
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES WHERE SALARY = 4800.00 AND FIRST_NAME='David';

--LOGICAL OR
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES WHERE SALARY = 4800.00 OR FIRST_NAME='David';

--Display the employees that make more than 5000 and less than 12000
SELECT * FROM EMPLOYEES WHERE SALARY>5000.00 AND SALARY<12000.00;


--RANGE CHECKING IS MUCH SIMPLER IN SQL USING
--BETWEEN ...... AND
--IS SAME AS COLUMN_VALUE>= lowerLimit and COLUMN_VALUE <= UpperLimit
--Above query can be simpler and more readable as below
SELECT * FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 12000;

--USING KEYWORD IN for multiple possible value of same column in condition
SELECT FIRST_NAME, JOB_ID
FROM EMPLOYEES
WHERE JOB_ID IN ('AD_VP','AD_ASST', 'FI_ACCOUNT', 'AC_ACCOUNT');

--HOW TO SAY NOT IN SQL
--for equality check != <> ,

SELECT * FROM REGIONS
WHERE REGION_ID != 1;
--WHERE REGION_ID <> 1;


--for BETWEEN AND --> NOT BETWEEN .. AND
SELECT * FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 12000;


--FOR IN -----> NOT IN
SELECT FIRST_NAME, JOB_ID
FROM EMPLOYEES
WHERE JOB_ID NOT IN ('AD_VP','AD_ASST', 'FI_ACCOUNT', 'AC_ACCOUNT');



--HOW TO USE NULL IN CONDITION?
SELECT  * FROM DEPARTMENTS
WHERE MANAGER_ID is null ;

SELECT  * FROM DEPARTMENTS
WHERE MANAGER_ID is not null ;

--sorting the result in ascending (low to high)
--or descending order (high to low)
--order by clause can be used to order the result of your query
--it use either column name or column index
--it must be the last part of the statement
--ASC for (low to high) by default,
--DESC (high to low)

SELECT  FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
ORDER BY FIRST_NAME;
--ORDER BY FIRST_NAME DESC;
--ORDER BY SALARY ASC
--ORDER BY LAST_NAME DESC;
SELECT  FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
ORDER BY 1 DESC; -- THIS means sort the result by first column




---what about the PARTIAL SEARCH?
     ---we use LIKE AND % (WILD CARD)
         --- % can represent 0 or more character of any kind
         --- _ can represent exactly one character of any kind


--DISPLAY ALL THE FIRST_NAME THAT START WITH LETTER A IN EMPLOYEES TABLES
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'Am%';

SELECT LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE '%a';

---display contains letter a
SELECT FIRST_NAME,LAST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%a%';





