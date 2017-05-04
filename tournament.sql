-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


--dropping the database if exists
DROP DATABASE IF EXISTS tournament;

--Dropping the tables if exists
DROP TABLE IF EXISTS player CASCADE;
DROP TABLE IF EXISTS match CASCADE;
DROP VIEW IF EXISTS result CASCADE;

--Creating the database
CREATE DATABASE tournament;

--Connecting to database
\c tournament;

-- Creating table for all players
CREATE TABLE player(
    name text,
    id serial PRIMARY KEY
);

-- Creating table for all matches
CREATE TABLE match(
    id serial PRIMARY Key,
    winner INTEGER,
    loser INTEGER,
    FOREIGN KEY(winner) REFERENCES player(id),
    FOREIGN KEY(loser) REFERENCES player(id)
);

-- Creating view results
CREATE VIEW result AS SELECT player.id, player.name,
COALESCE((SELECT COUNT(winner) FROM match WHERE player.id = match.winner),0) AS win_count,
COALESCE((SELECT COUNT(*) FROM match WHERE player.id = match.winner OR player.id = match.loser),0) AS match_count
FROM player LEFT JOIN match ON player.id = match.winner
GROUP BY player.id ORDER BY win_count DESC;

