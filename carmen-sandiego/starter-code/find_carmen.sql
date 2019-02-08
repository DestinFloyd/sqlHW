-- Clue #1: We recently got word that someone fitting 
-- Carmen Sandiego's description has been traveling through 
-- Southern Europe. She's most likely traveling someplace
-- where she won't be noticed, so find the least populated 
-- country in Southern Europe, and we'll start looking 
-- for her there.

SELECT * from country where region = 'Southern Europe' order by population;

-- Clue #2: Now that we're here, we have insight that Carmen was seen attending language classes in this country's officially recognized language. Check our databases and find out what language is spoken in this country, so we can call in a translator to work with you.
select * from countrylanguage
-- ?related by country code 
select * from countrylanguage where countrycode = 'VAT';
 countrycode | language | isofficial | percentage
-------------+----------+------------+------------
 VAT         | Italian  | t          |          0


-- Clue #3: We have new news on the classes Carmen attended: our gumshoes tell us 
-- she's moved on to a different country, a country where people speak only the 
-- language she was learning. Find out which nearby country speaks nothing but that language.

SELECT * from country where language = 'Italian' ;

 countrycode | language | isofficial | percentage
-------------+----------+------------+------------
 ITA         | Italian  | t          |       94.1
 SMR         | Italian  | t          |        100
 VAT         | Italian  | t          |          0
 ARG         | Italian  | f          |        1.7
 AUS         | Italian  | f          |        2.2
 LIE         | Italian  | f          |        2.5
 BEL         | Italian  | f          |        2.4
 BRA         | Italian  | f          |        0.4
 LUX         | Italian  | f          |        4.6
 MCO         | Italian  | f          |       16.1
 CHE         | Italian  | t          |        7.7
 CAN         | Italian  | f          |        1.7
 FRA         | Italian  | f          |        0.4
 DEU         | Italian  | f          |        0.7
 USA         | Italian  | f          |        0.6

 SMR = 100% !

-- Clue #4: We're booking the first flight out: maybe we've actually got a chance to catch her this time. There are only two cities she could be flying to in the country. One is named the same as the country – that would be too obvious. We're following our gut on this one; find out what other city in that country she might be flying to.

SELECT * from country where countrycode = 'SMR';
SELECT * from city  where countrycode = 'SMR';
  id  |    name    | countrycode |     district      | population
------+------------+-------------+-------------------+------------
 3170 | Serravalle | SMR         | Serravalle/Dogano |       4802
 3171 | San Marino | SMR         | San Marino        |       2294


bingo:  3170 | Serravalle | SMR | Serravalle/Dogano |  4802