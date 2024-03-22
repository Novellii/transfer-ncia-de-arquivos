## Exercício 1 ##

SELECT distinct open_emp_id
FROM account;

## Exercício 2 ##

SELECT o.fname, o.lname, b.name
FROM officer as o, business as b
where o.cust_id = b.cust_id;

## Exercício 3 ##

SELECT account_id, cust_id, avail_balance
FROM account
WHERE (status = 'ACTIVE') && (avail_balance > 2500);

## Exercício 4 ##

SELECT a.account_id, i.fname, i.lname, c.city, a.avail_balance
FROM account AS a, customer as c, individual as i
WHERE (a.status = 'ACTIVE') && (a.avail_balance > 2500)
  AND a.cust_id = c.cust_id 
  AND c.cust_id = i.cust_id;

## Exercício 5 ##

select MIN(dept_id) Posse, start_date DataInicial
FROM employee
GROUP BY dept_id;