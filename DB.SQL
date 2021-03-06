PRAGMA foreign_keys = ON;

CREATE TABLE User (
	pk_id		INTEGER PRIMARY KEY,
	first_name	TEXT,
	last_name	TEXT,
	email_address	TEXT,
	hashed_password TEXT
);

CREATE TABLE Note (
	pk_id		INTEGER PRIMARY KEY,
	fk_user_id 	INTEGER,
	title		TEXT, 
	creation_date	TEXT, 
	last_modified	TEXT, 
	markup_version	TEXT, 
	html_version	TEXT,
	FOREIGN KEY(fk_user_id) REFERENCES User(pk_id)
);

CREATE TABLE Tag (
	pk_id	INTEGER PRIMARY KEY,
	name 	TEXT
);

CREATE TABLE Note_Tag (
	fk_note_id 	INTEGER,
	fk_tag_id 	INTEGER,
	FOREIGN KEY(fk_note_id) REFERENCES Note(pk_id),
	FOREIGN KEY(fk_tag_id) REFERENCES Tag(pk_id)
);
