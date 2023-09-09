create database Cars;
use Cars;

-- READ DATA --
SELECT * FROM Car_dekho;

-- total cars- the total no of cars --
select count(*) from Car_dekho;


-- the manager asked how many cars are available in 2023--
select count(*) from Car_dekho where year = 2023;


-- the manager aksed how many cars is available in 2022,2021,2022,--
select count(*) from Car_dekho where year = 2020; #74
select count(*) from Car_dekho where year = 2021; #7
select count(*) from Car_dekho where year = 2022; #7


-- Group By--
select count(*) from Car_dekho where year in (2020,2021,2022) group by year;


-- client asked for all cars by year--
select year, count(*) from Car_dekho group by year;


-- client asked for the car dealer agent how many diesel cars are their in 2020--
select count(*) from Car_dekho where year = 2020 and fuel ="Diesel";#20

-- clint asked for the car dealer agent how many petrol cars are their in 2020--
select count(*) from Car_dekho where year =2020 and fuel = "Petrol"; #51


-- Print all fuel cars (CNG,Petrol,Diesel)--
select count(*) from Car_dekho where fuel = "CNG"; #53
select count(*) from Car_dekho where fuel = "Petrol";#3534
select count(*) from Car_dekho where fuel= "Diesel";#4304


-- Print all fuel cars (CNG,Petrol,Diesel) by all year--
select year, count(*) from Car_dekho where fuel = "Petrol" group by year; 
select year, count(*) from Car_dekho where fuel ="Diesel" group by year;
select year, count(*) from Car_dekho where fuel = "CNG" group by year;


-- Years where the cars count are more than 100--
select year, count(*) from Car_dekho group by year having count(*)>100;

-- All cars count  details between years 2015-2023;
select count(*) from Car_dekho  where year between 2015 and 2023; #4124

-- All cars complete list with details from year 2015 to 2023;
select * from Car_dekho where year between 2015 and 2023;