create database champions_league_finals;

use champions_league_and_teams;

drop table if exists season_league;
drop table if exists winner_team;
drop table if exists stadiums;

create table winner_team(
	id_team int primary key auto_increment not null,
    team_name varchar(50) not null,
    team_country varchar(50) not null,
    titles_count int not null
);
select * from winner_team;

create table stadiums(
	id_stadium int primary key auto_increment not null,
    stadium_name varchar(100) not null,
    stadium_country varchar(50) not null,
    final_count int not null
);
select * from stadiums;

create table season_league(
	id_season int primary key auto_increment not null,
	league_season varchar(50) not null,
    final_stadium int not null,
    final_date date not null,
    final_match varchar(50) not null,
    league_winner int not null,
    constraint fk_season_team foreign key (league_winner) references winner_team(id_team),
    constraint fk_league_final_stadium foreign key (final_stadium) references stadiums(id_stadium)
);
select * from season_league;

INSERT INTO winner_team (team_name, team_country, titles_count) values ('Real Madrid', 'Espanha', 13); # 1
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Benfica', 'Portugal', 2); # 2
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Milan', 'Itália', 7);	# 3
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Internazionale', 'Itália', 3);	# 4
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Celtic', 'Escócia', 1); # 5
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Manchester United', 'Inglaterra', 3); # 6
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Feyenoord', 'Holanda', 1);	# 7
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Ajax', 'Holanda', 1); # 8
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Bayern Munich', 'Alemanha', 5); # 9
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Liverpool', 'Inglaterra', 5); # 10
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Nottingham Forest', 'Inglaterra', 2); # 11
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Aston Villa', 'Inglaterra', 1); # 12
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Hamburg', 'Alemanha', 1); # 13
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Juventus', 'Itália', 2); # 14
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Steaua București', 'Romênia', 1); # 15
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Porto', 'Portugal', 1); # 16
INSERT INTO winner_team (team_name, team_country, titles_count) values ('PSV Eindhoven', 'Holanda', 1); # 17
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Red Star Belgrade', 'Iugoslávia', 1); # 18
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Barcelona', 'Espanha', 5); # 19
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Olympique de Marseille', 'França', 1); # 20
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Borussia Dortmund', 'Alemanha', 1); # 21
INSERT INTO winner_team (team_name, team_country, titles_count) values ('Chelsea', 'Inglaterra', 1); # 22

INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Parc des Princes', 'França', 3); # 1
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Santiago Bernabéu Stadium', 'Espanha', 4); # 2
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Heysel Stadium', 'Bélgica', 4); # 3
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Neckarstadion', 'Alemanha', 2); # 4
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Hampden Park', 'Escócia - UK', 3); # 5
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Wankdorf Stadium', 'Suiça', 1); # 6
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Olympisch Stadion', 'Holanda', 1); # 7
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Wembley Stadium', 'Inglaterra', 7); # 8
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Prater Stadium', 'Áustria', 3); # 9
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('San Siro', 'Itália', 3); # 10
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Estádio Nacional', 'Portugal', 1); # 11
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('De Kuip', 'Holanda', 2); # 12
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Red Star Stadium', 'Sérvia', 1); # 13
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Stadio Olimpico', 'Itália', 4); # 14
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Olympiastadion', 'Alemanha', 4); # 15
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Olympic Stadium', 'Grécia', 3); # 16
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Ramón Sánchez Pizjuán Stadium', 'Espanha', 1); # 17
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Camp Nou', 'Espanha', 2); # 18
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Stadio San Nicola', 'Itália', 1); # 19
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Ersnt-Happel-Stadion', 'Áustria', 1); # 20
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Amsterdam Arena', 'Holanda', 1); # 21
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Old Trafford', 'Inglaterra', 1); # 22
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Arena AufSchalke', 'Alemanha', 1); # 23
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Atatürk Olympic Stadium', 'Turquia', 1); # 24
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Luzhniki Stadium', 'Rússia', 1); # 25
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Allianz Arena', 'Alemanha', 1); # 26
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Estádio da Luz', 'Portugal', 1); # 27
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Millennium Stadium', 'País de Gales', 1); # 28
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('NSC Olimpiyskiy Stadium', 'Ucrânia', 1); # 29
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Wanda Metropolitano', 'Espanha', 1); # 30
INSERT INTO stadiums (stadium_name, stadium_country, final_count) values ('Stade de France', 'França', 2); # 31

INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1955-56', 1, '1956-6-16', 'Real Madrid 4 x 3 Reims', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1956-57', 2, '1957-5-30', 'Real Madrid 2 x 0 Fiorentina', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1957-58', 3, '1958-5-28', 'Real Madrid 3 x 2 Milan', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1958-59', 4, '1959-6-03', 'Real Madrid 2 x 0 Reims', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1959-60', 5, '1960-5-18', 'Real Madrid 7 x 3 Eintracht Frankfurt', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1960-61', 6, '1961-5-31', 'Benfica 3 x 2 Barcelona', 2);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1961-62', 7, '1962-5-02', 'Benfica 5 x 3 Real Madrid', 2);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1962-63', 8, '1963-5-22', 'Milan 2 x 1 Benfica', 3);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1963-64', 9, '1964-5-27', 'Internazionale 3 x 1 Real Madrid', 4);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1964-65', 10, '1965-5-27', 'Internazionale 1 x 0 Benfica', 4);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1965-66', 3, '1966-5-11', 'Real Madrid 2 x 1 Partizan', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1966-67', 11, '1967-5-25', 'Celtic 2 x 1 Internazionale', 5);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1967-68', 8, '1968-5-29', 'Manchester United 4 x 1 Benfica', 6);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1968-69', 2, '1969-5-28', 'Milan 4 x 1 Ajax', 3);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1969-70', 10, '1970-5-06', 'Feyenoord 2 x 1 Celtic', 7);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1970-71', 8, '1971-6-02', 'Ajax 2 x 0 Panathinaikos', 8);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1971-72', 12, '1972-5-31', 'Ajax 2 x 0 Internazionale', 8);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1972-73', 13, '1973-5-30', 'Ajax 1 x 0 Juventus', 8);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1973-74', 3, '1974-5-17', 'Bayern Munich 4 x 0 Atlético Madrid', 9);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1974-75', 1, '1975-5-28', 'Bayern Munich 2 x 0 Leeds United', 9);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1975-76', 5, '1976-5-12', 'Bayern Munich 1 x 0 Saint-Étienne', 9);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1976-77', 14, '1977-5-25', 'Liverpool 3 x 1 Borussia Mönchengladbach', 10);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1977-78', 8, '1978-5-10', 'Liverpool 1 x 0 Club Brugge', 10);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1978-79', 15, '1979-5-30', 'Nottingham Forest 1 x 0 Malmö FF', 11);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1979-80', 2, '1980-5-28', 'Nottingham Forest 1 x 0 Hamburg', 11);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1980-81', 1, '1981-5-27', 'Liverpool 1 x 0 Real Madrid', 10);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1981-82', 12, '1982-5-26', 'Aston Villa 1 x 0 Bayern Munich', 12);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1982-83', 16, '1983-5-25', 'Hamburg 1 x 0 Juventus', 13);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1983-84', 14, '1984-5-30', 'Liverpool 1(4) x (2)1 Roma', 10);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1984-85', 3, '1985-5-29', 'Juventus 1 x 0 Liverpool', 14);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1985-86', 17, '1986-5-07', 'Steaua București 0(2) x (0)0 Barcelona', 15);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1986-87', 9, '1987-5-27', 'Porto 2 x 1 Bayern Munich', 16);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1987-88', 4, '1988-5-25', 'PSV Eindhoven 0(6) x (5)0 Benfica', 17);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1988-89', 18, '1989-5-24', 'Milan 4 x 0 Steaua București', 3);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1989-90', 9, '1990-5-23', 'Milan 1 x 0 Benfica', 3);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1990-91', 19, '1991-5-29', 'Red Star Belgrade 0(5) x (3)0 Marseille', 18);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1991-92', 8, '1992-5-20', 'Barcelona 1 x 0  Sampdoria', 19);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1992-93', 15, '1993-5-26', 'Marseille 1 x 0 Milan', 20);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1993-94', 16, '1994-5-18', 'Milan 4 x 0 Barcelona', 3);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1994-95', 20, '1995-5-24', 'Ajax 1 x 0 Milan', 8);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1995-96', 14, '1996-5-22', 'Juventus 1(4) x (2)1 Ajax', 14);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1996-97', 15, '1997-5-28', 'Borussia Dortmund 3 x 1 Juventus', 21);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1997-98', 21, '1998-5-20', 'Real Madrid 1 x 0 Juventus', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1998-99', 18, '1999-5-26', 'Manchester United 2 x 1 Bayern Munich', 6);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('1999-00', 31, '2000-5-24', 'Real Madrid 3 x 0 Valencia', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2000-01', 10, '2001-5-23', 'Bayern Munich 1(5) x (4)1 Valencia', 9);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2001-02', 5, '2002-5-15', 'Real Madrid 2 x 1 Bayer Leverkusen', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2002-03', 16, '2003-5-28', 'Milan 0(3) x (2)0 Juventus', 3);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2003-04', 23, '2004-5-26', 'Porto 3 x 0 Monaco', 16);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2004-05', 24, '2005-5-25', 'Liverpool 3(3) x (2)3 Milan', 10);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2005-06', 31, '2006-5-17', 'Barcelona 2 x 1 Arsenal', 19);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2006-07', 16, '2007-5-23', 'Milan 2 x 1 Liverpool', 3);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2007-08', 25, '2008-5-21', 'Manchester United 1(6) x (5)1 Chelsea', 6);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2008-09', 14, '2009-5-27', 'Barcelona 2 x 0 Manchester United', 19);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2009-10', 2, '2010-5-22', 'Internazionale 2 x 0 Bayern Munich', 4);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2010-11', 8, '2011-5-28', 'Barcelona 3 x 1  Manchester United', 19);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2011-12', 26, '2012-5-19', 'Chelsea 1(4) x (3)1 Bayern Munich', 22);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2012-13', 8, '2013-5-25', 'Bayern Munich 2 x 1 Borussia Dortmund', 9);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2013-14', 27, '2014-5-24', 'Real Madrid 4 x 1 Atlético Madrid', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2014-15', 15, '2015-6-06', 'Barcelona 3 x 1 Juventus', 19);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2015-16', 10, '2016-5-28', 'Real Madrid 1(5) x (3)1 Atlético Madrid', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2016-17', 28, '2017-6-03', 'Real Madrid 4 x 1 Juventus', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2017-18', 29, '2018-5-26', 'Real Madrid 3 x 1 Liverpool', 1);
INSERT INTO season_league (league_season, final_stadium, final_date, final_match, league_winner) values ('2018-19', 30, '2019-6-01', 'Liverpool 2 x 0 Tottenham Hotspur', 10);


select league_season, final_date, final_match, team_name as champion from season_league inner join winner_team on league_winner = id_team order by league_season;

select * from season_league;
select 
	league_season, 
    final_date, 
    final_match 
from season_league 
inner join winner_team
on id_team = league_winner
and team_name = 'Milan';











