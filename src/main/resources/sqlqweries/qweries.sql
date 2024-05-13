CREATE TABLE Messages(
    id INTEGER PRIMARY KEY,
    message_text VARCHAR(255)
);
create table authorities
(
    id integer,
    username  varchar(20),
    authority varchar(30)
);
create table users
(
    id INTEGER,
    username varchar(50),
    password varchar(100),
    enabled varchar(30),
    priority integer
);
ALTER TABLE users ALTER COLUMN username TYPE VARCHAR(50);
ALTER TABLE users ALTER COLUMN password TYPE VARCHAR(100);