ALTER TABLE BoardGame
ADD
CreatedBy varchar(255) null,
UpdatedBy varchar(255) null,
DateCreated datetime null,
DateUpdated datetime null;

ALTER TABLE RegisteredUser
ADD
CreatedBy varchar(255) null,
UpdatedBy varchar(255) null,
DateCreated datetime null,
DateUpdated datetime null;

ALTER TABLE Review
ADD
CreatedBy varchar(255) null,
UpdatedBy varchar(255) null,
DateCreated datetime null,
DateUpdated datetime null;

UPDATE BoardGame 
SET CreatedBy = (SELECT "Username" FROM "RegisteredUser" WHERE Username like 'SYSADMIN'),
UpdatedBy = (SELECT "Username" FROM "RegisteredUser" WHERE Username like 'SYSADMIN'),
DateCreated = getdate(),
DateUpdated = getdate();

UPDATE RegisteredUser
SET CreatedBy = (SELECT "Username" FROM "RegisteredUser" WHERE Username like 'SYSADMIN'),
UpdatedBy = (SELECT "Username" FROM "RegisteredUser" WHERE Username like 'SYSADMIN'),
DateCreated = getdate(),
DateUpdated = getdate();

UPDATE Review
SET CreatedBy = (SELECT "Username" FROM "RegisteredUser" WHERE Username like 'SYSADMIN'),
UpdatedBy = (SELECT "Username" FROM "RegisteredUser" WHERE Username like 'SYSADMIN'),
DateCreated = getdate(),
DateUpdated = getdate();