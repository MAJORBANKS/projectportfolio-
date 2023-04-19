SELECT * 
FROM portfolioproject.covidvaccinations
order by 3,4

/*Selecting data we are about to use*/
SELECT location,date,total_cases,new_cases,total_deaths,population
FROM portfolioproject.coviddeaths
order by 1,2 

/*Shows likelihood of dying if you contract virus*/
/*Looking at Total Cases vs Total Deaths*/
SELECT location,date,total_cases,new_cases,total_deaths,population,(total_deaths/total_cases)*100 as DeathPercentage
FROM portfolioproject.coviddeaths
order by 1,2 

/*Looking at Coountries with Highest infection rate compared to population*/

Select location,population,max(total_cases) as HighestInfectionCount,max((total_cases/population))*100 as percentpopulationinfected 
from portfolioproject.coviddeaths
Group by location,population
order by percentpopulationinfected desc  

select * 
FROM portfolioproject.coviddeaths dea 
Join portfolioproject.covidvaccinations vac 
    on dea.location = vac.location 
    and dea.date = vac.date 
order by 1,2,3







SELECT location,population,max(total_cases) as HighestInfectionCount,max((total_cases/population)) * 100 as percentpopulationinfected
FROM portfolioproject.coviddeaths
GROUP by location, population 
order by percentpopulationinfected desc



SELECT * 
FROM portfolioproject.coviddeaths dea 
Join portfolioproject.covidvaccinations vac 
    on dea.location = vac.location 
    and dea.date = vac.date
    order by 1,2,3 