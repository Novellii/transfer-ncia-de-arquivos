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

# Agora é feito uma junção natural de buniness e customer sem precisar relacionar PK e FK; #

select CONCAT(fname, " ", lname) Nome, name, city
from officer natural join business
natural join customer;

# No left ou Right join, é comparado duas tabelas
# left join : Compara a coluna da esquerda com a da direita, se tiver valor nulo na da esquerda,
# ele não retorna nada relacionado a coluna direita.
# right join : Compara a coluna da direita com a da esquerda, se tiver valor nulo na da direita,
# ele não retorna nada relacionado a coluna esquerda.

select pt.name, p.name
from product p right join product_type pt
on p.product_type_cd = pt.product_type_cd;


select p.product_cd, p.name, count(a.avail_balance)
from product p left join account a
using(product_cd)
group by p.name
order by 3 DESC;

delimiter $$
create procedure 
render(IN taxa decimal(3,2))
begin
update account
set avail_balance = avail_balance + avail_balance * 0.01 * taxa;
end $$