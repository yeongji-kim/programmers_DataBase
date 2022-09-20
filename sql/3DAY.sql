-- Q1. 동물 보호소에 들어온 동물 중 젊은 동물1의 아이디와 이름을 조회하는 SQL 문을 작성해주세요. 이때 결과는 아이디 순으로 조회해주세요.
-- INTAKE_CONDITION이 Aged가 아닌 경우를 뜻함.

SELECT ANIMAL_ID , NAME  FROM ANIMAL_INS WHERE INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_ID ;

-- Q2. 동물 보호소에 가장 먼저 들어온 동물의 이름을 조회하는 SQL 문을 작성해주세요. 

SELECT NAME FROM ANIMAL_INS ORDER BY DATETIME LIMIT 1;

-- Q3. 동물 보호소에 들어온 동물 중 아픈 동물의 아이디와 이름을 조회하는 SQL 문을 작성해주세요. 이때 결과는 아이디 순으로 조회해주세요.

SELECT ANIMAL_ID , NAME FROM ANIMAL_INS WHERE INTAKE_CONDITION = 'Sick' ORDER BY ANIMAL_ID;

-- Q4.동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 
-- 이때 결과는 ANIMAL_ID 역순으로 보여주세요. SQL을 실행하면 다음과 같이 출력되어야 합니다.

SELECT NAME , DATETIME FROM ANIMAL_INS ORDER BY ANIMAL_ID DESC;

