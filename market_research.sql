#most recent information. Shows death toll by mutiple causes#

SELECT leadingdeathcause.`Year`, leadingdeathcause.`113 Cause Name`, leadingdeathcause.`Cause Name`, leadingdeathcause.`State`, leadingdeathcause.Deaths
FROM leadingdeathcause
WHERE leadingdeathcause.`113 Cause Name` = 'All Causes' AND leadingdeathcause.`State` = 'United States';

#query shows highest year with the most deaths#
SELECT  MAX(leadingdeathcause.`year`) AS 'Highest Death Rate Year'
FROM leadingdeathcause ;

#This query helps me find ALE of the last 50+ years #
SELECT AVG(`Average Life Expectancy (Years)`) AS 'Average Expectancy Throught 50+ Years', Sex, `Year`
FROM deathratebyage
WHERE Sex = 'Both Sexes'
GROUP BY `Average Life Expectancy (Years)`, Sex, `Year`
ORDER BY 'Average Expectancy Through 50+ Years' DESC;





# this piece of query helps me find the the year and date people died from cancer#
SELECT `Year`, `Cause Name`, Deaths, State
FROM leadingdeathcause
WHERE `Cause Name` = 'cancer' AND `State` = 'United States';



#With this query, i am able to determine the death caused by accidents#
SELECT * FROM market_research.leadingdeathcause;

SELECT `Year`, `Cause Name`, Deaths, State
FROM leadingdeathcause
WHERE `Cause Name` LIKE '%Unintentional%' AND `State` = 'United States';


#This query will help me determine the deaths that were caused by strokes#
SELECT * FROM market_research.leadingdeathcause;

SELECT `Year`, `Cause Name`, Deaths, State
FROM leadingdeathcause
WHERE `Cause Name` = 'Stroke' AND `State` = 'United States';

SELECT AVG(Deaths) 
FROM leadingdeathcause;



#This Query helped me find the year the people died, what their life expectancy was, their age adjusted death rate, and the cause of their death#
SELECT deathratebyage.`Year`, deathratebyage.Sex, deathratebyage.`Average Life Expectancy (Years)`, deathratebyage.`Age-adjusted Death Rate`, leadingdeathcause.`Cause Name`
FROM deathratebyage 
JOIN leadingdeathcause ON deathratebyage.`Year` =leadingdeathcause.`Year`
GROUP BY deathratebyage.`Year`, deathratebyage.Sex, deathratebyage.`Average Life Expectancy (Years)`, deathratebyage.`Age-adjusted Death Rate`, leadingdeathcause.`Cause Name`;

#This query helps me find the 
