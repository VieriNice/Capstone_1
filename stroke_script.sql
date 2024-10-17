SELECT * FROM market_research.leadingdeathcause;

SELECT `Year`, `Cause Name`, Deaths, State
FROM leadingdeathcause
WHERE `Cause Name` = 'Stroke';