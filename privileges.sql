use mysql;
select host, user from user;
create user 'ctfuser'@'localhost' identified by 'abc123456';
grant all privileges on ctf.* to 'ctfuser'@'localhost';
flush privileges;