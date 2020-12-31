-- The first example shows the goal scored by a player with the last name 'Bender'. The * says to list all the columns in the table - a shorter way of saying matchid, teamid, player, gtime

SELECT matchid, player
 FROM goal 
  WHERE teamid = 'GER';

-- Show id, stadium, team1, team2 for just game 1012

SELECT id,stadium,team1,team2
  FROM game
where id = '1012';

