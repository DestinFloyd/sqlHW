-- ANSWERS:
select name from teams;
select stadium, head_coach  from teams;
 select head_coach  from teams where conference = 'AFC' and division = 'South';
 nfl=# select COUNT(*) from players groupBy( id) ;
 count
-------
  1532
  