-- ANSWERS:
select name from teams;
select stadium, head_coach  from teams;
 select head_coach  from teams where conference = 'AFC' and division = 'South';
 nfl=# select COUNT(*) from players groupBy( id) ;
 count
-------
  1532
  select head_coach  from teams where conference = 'AFC' and division = 'North' or division = 'East' ;
  select name, salary  from players order by salary desc;
  select AVG(salary) from players;
         avg
----------------------
 1579692.539817232376

  select name, position from players where salary > 10000000;

  select max (salary) from players ;
  nfl=# select name from players where salary = 18000000;
      name
----------------
 Peyton Manning

select name, position from players order by salary desc limit 100;

select avg(salary) from players where position='DE';
         avg
----------------------
 2161326.377049180328

 select * from teams;
--  / id buffalo bills = 1
 select players.name from players  where team_id = '1';

 select * from teams;
--  / id NY Giants = 18
 nfl=# select SUM(players.salary) from players where team_id = '18';
   sum
----------
 74179466

select * from teams;
--  / id greenbay packers = 23
 select salary  from players where players.team_id = '23' order by salary Asc;
 390000

 select salary, name  from players where players.team_id = '23' and salary = 390000;
 salary |      name
--------+----------------
 390000 | Shaky Smithson