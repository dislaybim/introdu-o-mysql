use cadastro;

-- Comando para deletar usuários do banco de dados

select * from usuarios;

delete from usuarios
where id = '4'
limit 1;

delete from usuarios
where id = '5'
limit 1;

select * from usuarios;
