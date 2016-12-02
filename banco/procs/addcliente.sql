delimiter $$

drop procedure if exists sp_addcliente;

create procedure sp_addcliente (
IN nome varchar(30),
IN ddd int(2),
IN telefone varchar(20)
)

begin
	insert into clientes (
		nome,ddd,telefone
	) 
	values (
		nome,ddd,telefone
	);
end $$

delimiter ;
