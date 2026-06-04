-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- The STATION table is described as follows:

select city,length(city) from station
order by length(city) asc, city limit 1;
select city,length(city) from station
order by length(city) desc, city limit 1;

-- LENGTH(CITY) → finds number of characters.
-- First query → shortest city name.
-- Second query → longest city name.
-- CITY ASC handles alphabetical tie-breaking.
-- FETCH FIRST 1 ROW ONLY selects only one row in DB2-compatible SQL.