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


## Dia 05/04 ##

## Exercício ##

select dept_id, min(start_date) Posse                            #  Retorna 3 colunas de funcionarios mais antigos
from employee
group by dept_id;         

## Exercício ##

select min(e.start_date) posse, d.dept_id, d.name
from employee e, department d
where e.dept_id = d.dept_id
group by dept_id;

## Exercício ##

select fname, lname, datas.dept_id, start_date                    # Consegue assim, o nome dos funcionários.
from employee e, ( select dept_id, min(start_date) Posse
			             from employee
			             group by dept_id) datas
where datas.posse = e.start_date AND datas.dept_id = e.dept_id    # Compara os três funcionários mais antigos
                                                                  # com todos os funcionários.

# Skippar Over dos estudos.