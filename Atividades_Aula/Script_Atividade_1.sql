create table PRODUTOS(ID_NF INTEGER not null,
						ID_ITEM INTEGER not null,
						COD_PROD INTEGER not null,
						VALOR_UNIT DECIMAL(10,2) not null, 
						QUANTIDADE INTEGER not null,
						DESCONTO INTEGER);
		
select * from PRODUTOS

					
# ID_NF = 1						
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (1, 1, 1, 25.00, 10, 5);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (1, 2, 2, 13.50, 3, NULL);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (1, 3, 3, 15.00, 2, NULL);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (1, 4, 4, 10.00, 1, NULL);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (1, 5, 5, 30.00, 1, NULL);

# ID_NF = 2
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (2, 1, 3, 15.00, 4, NULL);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (2, 2, 4, 10.00, 5, NULL);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (2, 3, 5, 30.00, 7, NULL);

# ID_NF = 3
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (3, 1, 1, 25.00, 5, NULL);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (3, 2, 4, 10.00, 4, NULL);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (3, 3, 5, 30.00, 7, NULL);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (3, 4, 2, 13.50, 7, NULL);

# ID_NF = 4
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (4, 1, 5, 30.00, 10, 15);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (4, 2, 4, 10.00, 12, 5);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (4, 3, 1, 25.00, 13, 5);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (4, 4, 2, 13.50, 15, 5);

# ID_NF = 5
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (5, 1, 3, 15.00, 3, NULL);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (5, 2, 5, 30.00, 6, NULL);

# ID_NF = 6
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (6, 1, 1, 25.00, 22, 15);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (6, 2, 3, 15.00, 25, 20);

# ID_NF = 7
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (7, 1, 1, 25.00, 10, 3);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (7, 2, 2, 13.50, 10, 4);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (7, 3, 3, 15.00, 10, 4);
insert into PRODUTOS(ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE, DESCONTO) values (7, 4, 5, 30.00, 10, 1);


# Pesquise os itens que foram vendidos sem desconto. As colunas presentes no resultado da
# consulta são: ID_NF, ID_ITEM, COD_PROD E VALOR_UNIT.

select ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT 
from PRODUTOS 
where DESCONTO IS NULL

# Pesquise os itens que foram vendidos com desconto. As colunas presentes no resultado da
# consulta são: ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT

select ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT 
from PRODUTOS 
where DESCONTO is NOT null

# Pesquise todas as NFs com itens cujo preço unitário está entre 13,00 e 25,00. As colunas
# presentes no resultado da consulta são: ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT

select ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT 
from PRODUTOS 
where VALOR_UNIT between 13.00 and 25.00

# Pesquise todas as NFs que possuam itens com descontos: 5, 15 , 20. As colunas presentes no
# resultado da consulta são: ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT

select ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT 
from PRODUTOS
where DESCONTO in (5,15,20)


# Pesquise todas as notas e exiba de maneira distinta os produtos cujo o valor seja maior que
# 25,00. As colunas presentes no resultado da consulta são: COD_PROD, VALOR_UNIT

select COD_PROD, VALOR_UNIT
from PRODUTOS
where VALOR_UNIT > 25




