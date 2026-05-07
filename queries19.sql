SELECT t1.id + 1 AS missing_id
FROM numbers t1
LEFT JOIN numbers t2
ON t1.id + 1 = t2.id
WHERE t2.id IS NULL;