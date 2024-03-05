use cars;
-- READ DATA 
select * from car_dekho;

-- TOTAL CARS: To get acounyt of total record--
select count(*) from car_dekho;

-- the manager asked the employee how many cars will be available in 2023--
 select count(*) from car_dekho where year=2023;
 
 -- the manager asked the employee how many cars is available in 2020,2021,2021--
 select count(*) from car_dekho where year=2020;
 select count(*) from car_dekho where year=2021;
 select count(*) from car_dekho where year=2022;
 
 -- group by --
 select count(*)from car_dekho where year in (2020,2021,2022) group by year;
 
 -- client asked me to print the total of all cars by year, i don't se all detail --
 select year,count(*) from car_dekho group by year;
 
 -- client asked to car dealer agent how many diesal cars will there be in 2020 --
 select count(*) from car_dekho where year=2020 and fuel ="diesel";
 
 -- client requested a car dealer agent  how many petrol cars will there be in 2020 -- 
 select count(*) from car_dekho where year=2020 and fuel="petrol";
 
 -- manager told the employee to give a print all the fuel cars(petrol ,diesel,and cng by all years --
 select year,count(*) from car_dekho where fuel ="diesel" group by year;
 select year,count(*) from car_dekho where fuel ="petrol" group by year;
 select year,count(*) from car_dekho where fuel ="cng" group by year;
 
 -- Manager said there were more than 100 cars in a given year,which year had more than 100 cars --
 select year,count(*) from car_dekho group by year having count(*)>100;
 select year,count(*) from car_dekho group by year having count(*)<50;
  
  -- the manager  said to the employee all cars count detail between 2015 and 2023; we need a complete list --
  select count(*) from car_dekho where year between 2015 and 2023;
  
  -- the manager said to thr employee all cars detail between 2015 to 2023 we need complete list --
  select * from car_dekho where year between 2015 and 2023;
  
  -- END
 
 