CREATE TABLE RegisteredUser (
Id uniqueidentifier not null PRIMARY KEY,
Username varchar(255) not null,
Pass varchar(255) not null,
UserRole varchar(255) null);

---------------------------

INSERT INTO RegisteredUser VALUES
(newid(), 'SYSADMIN', '1234', 'Administrator');


-----------------------------

ALTER TABLE Review
ADD
RegisteredUserId uniqueidentifier null;

UPDATE Review
SET RegisteredUserId = (SELECT "Id" FROM "RegisteredUser" WHERE Username like 'SYSADMIN');

ALTER TABLE Review
ADD
CONSTRAINT FK_Review_RegisteredUser_RegisteredUserId FOREIGN KEY (RegisteredUserId) REFERENCES RegisteredUser (Id);

