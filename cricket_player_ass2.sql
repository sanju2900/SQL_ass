-- Create a cricket player table where the country name 
-- and the person name are together the primary key
-- create a table
CREATE TABLE Cricket_player (
player_id INT ,
player_name varchar(20),
country_name varchar(20),

-- here city should be unique
PRIMARY KEY(player_name,country_name)
);
-- insert some values

INSERT INTO Cricket_player VALUES (1, 'Ryan', 'patna');
INSERT INTO Cricket_player VALUES (2, 'Sanju', 'hajipur');
INSERT INTO Cricket_player VALUES (3, 'Raj', 'Mumbai');
INSERT INTO Cricket_player VALUES (4, 'Rani', 'Surat');
INSERT INTO Cricket_player VALUES (5, 'Riya', 'patna');
INSERT INTO Cricket_player VALUES (6, 'Rahul', 'goa');
INSERT INTO Cricket_player VALUES (7, 'Sanju');
-- fetch some values
SELECT * FROM Cricket_player;