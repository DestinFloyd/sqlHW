SELECT * from country where region = 'Southern Europe' order by population;

select * from countrylanguage
-- ?related by country code 
select * from countrylanguage where countrycode = 'VAT';
--  VAT         | Italian  | t          |          0

SELECT * from country where language = 'Italian' ;

--  SMR = 100% !

SELECT * from country where countrycode = 'SMR';
SELECT * from city  where countrycode = 'SMR';

-- bingo:  3170 | Serravalle | SMR | Serravalle/Dogano |  4802

SELECT * from city where name like 'Ser%';
SELECT * from city where name like 'Serr%';
--   id  |    name    | countrycode |     district      | population
-- ------+------------+-------------+-------------------+------------
--   265 | Serra      | BRA         | Espï¿½rito Santo  |     302666
--  3170 | Serravalle | SMR         | Serravalle/Dogano |       4802

SELECT * FROM country where code = 'BRA';

--  code |  name  |   continent   |    region     | surfacearea | indepyear | population | lifeexpectancy |    gnp    |  gnpold   | localname |  governmentform  |        headofstate        | capital | code2
-- ------+--------+---------------+---------------+-------------+-----------+------------+----------------+-----------+-----------+-----------+------------------+---------------------------+---------+-------
--  BRA  | Brazil | South America | South America |  8.5474e+06 |      1822 |  170115000 |           62.9 | 776739.00 | 804108.00 | Brasil    | Federal Republic | Fernando Henrique Cardoso |     211 | BR


-- ?after trying country whoops
SELECT * FROM city where population = 91084;
--   id  |     name     | countrycode |  district  | population
-- ------+--------------+-------------+------------+------------
--  4060 | Santa Monica | USA         | California |      91084

