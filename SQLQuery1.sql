CREATE DATABASE PlayPalMini

CREATE TABLE BoardGame (
Id uniqueidentifier not null PRIMARY KEY,
Title varchar(255) not null,
Description text null);

CREATE TABLE Review (
Id uniqueidentifier not null PRIMARY KEY,
Title text not null,
Comment text null,
Rating int not null,
BoardGameId uniqueidentifier not null,
CONSTRAINT FK_Review_BoardGame_BoardGameId FOREIGN KEY (BoardGameId) REFERENCES BoardGame (Id));

------------------------------------------------

INSERT INTO BoardGame VALUES
(newid(), 'Risk', 'Risk is a popular strategy board game that is played on a world map divided into territories. 
The objective of the game is to conquer the world by occupying all territories on the board or eliminating all other players.');

INSERT INTO BoardGame VALUES
(newid(), 'Uno', 'The objective of the game is to be the first player to get rid of all their cards by playing cards with matching colors or numbers.');

INSERT INTO BoardGame VALUES
(newid(), 'Pandemic', 'Pandemic is a cooperative board game where players work together as a team to stop the spread of deadly diseases across the world. 
The objective of the game is to discover cures for four different diseases before they become a global pandemic and wipe out humanity.');

INSERT INTO BoardGame VALUES
(newid(), 'Scrabble', 'Players use letter tiles to create words on a game board. The objective of the game is to score as many points as possible 
by forming words with high-scoring letters and placing them on the game board in a crossword-style pattern.');

INSERT INTO BoardGame VALUES
(newid(), 'Codenames', 'The objective of the game is to correctly identify all of your team''s secret agents before the other team does.');

INSERT INTO BoardGame VALUES
(newid(), 'Catan', 'Players take on the roles of settlers, each attempting to build and develop holdings while trading and acquiring resources. 
Players gain victory points as their settlements grow; the first to reach a set number of victory points.');

INSERT INTO BoardGame VALUES
(newid(), 'Ubongo', 'In Ubongo, players compete to solve individual puzzles as quickly as they can to get first crack at the gems on hand for the taking.');

INSERT INTO BoardGame VALUES
(newid(), 'Dixit', 'Using a deck of cards illustrated with dreamlike images, players select cards that match a title suggested by the designated storyteller player, 
and attempt to guess which card the storyteller selected.');

INSERT INTO BoardGame VALUES
(newid(), 'Dobble', 'Dobble is a game in which players have to find symbols in common between two cards.');

------------------------------------------------------

INSERT INTO Review VALUES
(newid(), 'Never gets old!', 'Scrabble is a classic game that never gets old. It''s a great way to challenge your vocabulary and strategy skills 
while having fun with friends and family. The game board and tiles are well-made, and the game is easy to learn but hard to master. I highly recommend it!', 5, (SELECT "Id" FROM "BoardGame" WHERE "Title" = 'Scrabble'));

INSERT INTO Review VALUES
(newid(), 'Booooring.', 'I was really disappointed with Scrabble. The game is slow and boring, and it feels like you''re just rearranging letters on a board. 
It''s not very engaging or exciting, and the scoring system can be frustrating. I also found the game to be too difficult for casual players, 
and it''s not very fun to play if you''re not good at spelling or vocabulary. I wouldn''t recommend this game unless you''re a die-hard Scrabble fan.', 1, (SELECT "Id" FROM "BoardGame" WHERE "Title" = 'Scrabble'));

INSERT INTO Review VALUES
(newid(), 'I have mixed feelings about this game...', 'On one hand, I love the challenge of coming up with new words and trying to score big points. 
The game is well-made, with high-quality tiles and a sturdy game board. However, the game can be slow-paced and can take a while to play, 
which can be frustrating if you''re short on time. Additionally, the scoring system can be confusing at times, and it can be difficult 
to keep track of all the letters on the board. Overall, I would recommend Scrabble to those who enjoy word games and are looking for a mental challenge, 
but it''s not for everyone.', 3,(SELECT "Id" FROM "BoardGame" WHERE "Title" = 'Scrabble'));

INSERT INTO Review VALUES
(newid(), 'Fun and challenging!', 'I really enjoyed playing Settlers of Catan. The game is easy to learn but offers a lot of strategic depth, which keeps things interesting. 
The game board and pieces are high-quality and visually appealing, and the game mechanics are well-designed. The game is also highly replayable, 
with different strategies and outcomes each time you play. The only downside is that the game can take a while to play, which may not be suitable for everyone. 
Overall, I highly recommend Settlers of Catan to anyone who enjoys strategy games and is looking for a fun and challenging experience.', 4, (SELECT "Id" FROM "BoardGame" WHERE "Title" = 'Catan'));

INSERT INTO Review VALUES
(newid(), 'Uno!', 'I absolutely love Uno! It''s a classic card game that never gets old. The game is easy to learn but has endless possibilities for strategy and 
fun. The different cards add a level of excitement to the game, and the game is perfect for both casual and competitive play. 
The packaging and cards are also well-made and durable, which ensures the game can be enjoyed for years to come. 
I highly recommend Uno to anyone looking for a fun and engaging card game that can be enjoyed by people of all ages.', 5, (SELECT "Id" FROM "BoardGame" WHERE "Title" = 'Uno'));
