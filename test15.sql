-- 코드를 입력하세요
SELECT ORDER_ID, PRODUCT_ID, SUBSTR(OUT_DATE,1,10) AS OUT_DATE,
CASE WHEN(SUBSTR(OUT_DATE,1,10) > '2022-05-01') THEN '출고대기'
     WHEN(SUBSTR(OUT_DATE,1,10) <= '2022-05-01') THEN '출고완료'
ELSE '출고미정'
END AS 출고여부
FROM FOOD_ORDER
ORDER BY ORDER_ID ASC