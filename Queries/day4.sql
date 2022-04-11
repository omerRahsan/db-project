SELECT DEPARTMENT_NAME, EMPLOYEES.FIRST_NAME
FROM DEPARTMENTS
INNER JOIN EMPLOYEES ON DEPARTMENTS.MANAGER_ID = EMPLOYEES.EMPLOYEE_ID;



SELECT DEPARTMENT_NAME, EMPLOYEES.FIRST_NAME
FROM DEPARTMENTS
INNER JOIN EMPLOYEES ON DEPARTMENTS.MANAGER_ID = EMPLOYEES.EMPLOYEE_ID
WHERE DEPARTMENT_NAME = 'Executive';

SELECT REGION_NAME, COUNT(COUNTRY_NAME)
FROM COUNTRIES
INNER JOIN REGIONS ON COUNTRIES.REGION_ID = REGIONS.REGION_ID
GROUP BY REGION_NAME;