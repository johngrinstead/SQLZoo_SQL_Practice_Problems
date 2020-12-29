-- List each country name where the population is larger than that of 'Russia'.

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');

-- Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

SELECT name FROM world
  WHERE continent = 'Europe' and gdp/population >
     (SELECT gdp/population FROM world
      WHERE name='United Kingdom');

-- List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.

select name, continent
from world
where continent in 
    (select continent 
    from world 
    where name in ('Argentina', 'Australia'))
order by name;

-- Which country has a population that is more than Canada but less than Poland? Show the name and the population.

select name, population
from world
where population > 
    (select population 
    from world 
    where name = 'Canada')
and population < 
    (select population 
    from world where 
    name = 'Poland');

    