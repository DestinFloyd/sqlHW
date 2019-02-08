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