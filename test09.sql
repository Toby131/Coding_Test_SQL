-- 코드를 입력하세요
SELECT ANIMAL_INS.ANIMAL_ID, ANIMAL_INS.ANIMAL_TYPE, ANIMAL_INS.NAME
FROM ANIMAL_INS
LEFT JOIN ANIMAL_OUTS
ON ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID
WHERE (ANIMAL_INS.SEX_UPON_INTAKE = 'Intact Male' OR ANIMAL_INS.SEX_UPON_INTAKE = 'Intact Female')
AND (ANIMAL_OUTS.SEX_UPON_OUTCOME != 'Intact Male' AND ANIMAL_OUTS.SEX_UPON_OUTCOME != 'Intact Female')
ORDER BY ANIMAL_INS.ANIMAL_ID