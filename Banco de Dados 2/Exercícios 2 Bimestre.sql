SELECT emp_id, fname, lname
FROM employee JOIN department
USING(dept_id)

SELECT account_id
FROM account JOIN employee
ON open_date > start_date
WHERE concat(fname,' ',lname) = 'Michael Smith';


SELECT account_id, fed_id, p.name, a.product_cd
FROM customer c JOIN account a
USING(cust_id)
JOIN product p
USING(product_cd)
JOIN individual i
USING(cust_id)