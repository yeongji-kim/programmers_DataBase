-- Q1. 동물 보호소에 들어온 동물 중, 이름이 있는 동물의 ID를 조회하는 SQL 문을 작성해주세요. 단, ID는 오름차순 정렬되어야 합니다.

SELECT ANIMAL_ID FROM ANIMAL_INS WHERE NAME IS NOT NULL;

-- Q2.동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성해주세요. 이때 프로그래밍을 모르는 사람들은 NULL이라는 기호를 모르기 때문에, 이름이 없는 동물의 이름은 "No name"으로 표시해 주세요.

SELECT
ANIMAL_TYPE ,
CASE WHEN NAME IS NULL THEN 'No name' ELSE NAME END NAME,
SEX_UPON_INTAKE FROM ANIMAL_INS ORDER BY ANIMAL_ID;

-- Q3. 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 SQL문을 작성해주세요.

SELECT ANIMAL_ID , NAME
FROM ANIMAL_OUTS WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_INS)
ORDER BY ANIMAL_ID , NAME ;