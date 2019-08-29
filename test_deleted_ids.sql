
SELECT  a.ID
FROM    wp_posts a
    INNER JOIN
    (
        SELECT  ID, post_date, post_name, COUNT(*) totalCount
        FROM    wp_posts
        WHERE post_type = 'attachment'
        GROUP   BY post_date
        HAVING  COUNT(*) > 1
    ) b ON  a.post_date = b.post_date
        
WHERE a.post_name LIKE '%-2%'
AND a.ID > b.ID
