delimiter $$

drop procedure if exists sp_addramal;

create procedure sp_addramal (
IN callerid varchar(80),
IN fromuser varchar(80),
IN secret varchar(80),
IN empresa_id int(10)
)
begin
	insert into ast_nvt.ramais (
name,
fromuser,
secret,
username,
defaultuser,
callerid,
empresa_id
) 
values (
fromuser,
fromuser,
secret,
fromuser,
fromuser,
callerid,
empresa_id);
end $$

delimiter ;
