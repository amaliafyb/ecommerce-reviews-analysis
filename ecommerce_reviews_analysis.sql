SELECT *
FROM wcreviews
;



SELECT 
    department_name,
    COUNT(*) AS total_reviews,
    ROUND(AVG(rating),2) AS avg_rating
FROM wcreviews
WHERE department_name != ''
GROUP BY department_name
ORDER BY total_reviews DESC
;


SELECT 
    department_name,
    ROUND(AVG(age),1) AS avg_age,
    MIN(age) AS youngest_age,
    MAX(age) AS oldest_age
FROM wcreviews
WHERE department_name != ''
GROUP BY department_name
ORDER BY avg_age DESC
;


SELECT 
    department_name,
    COUNT(*) AS total_reviews,
    SUM(recommended_ind) AS total_recommended,
    ROUND(AVG(recommended_ind) * 100,1) AS recommendation_rate_pct
FROM wcreviews
WHERE department_name != ''
GROUP BY department_name
ORDER BY recommendation_rate_pct DESC
;