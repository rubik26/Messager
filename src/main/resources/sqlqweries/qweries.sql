CREATE TABLE Messages
(
    id INTEGER PRIMARY KEY,
    message_text VARCHAR(255)
);
CREATE TABLE users
(
    id INTEGER PRIMARY KEY ,
    username VARCHAR(30)  NOT NULL UNIQUE,
    password varchar(30) NOT NULL ,
    enabled  BOOLEAN NOT NULL
);

CREATE TABLE authorities
(
    id INTEGER,
    username  VARCHAR(50) NOT NULL ,
    authority varchar(50) not null,
    CONSTRAINT fk_authorities_users FOREIGN KEY (username) REFERENCES users (username)
);
CREATE UNIQUE INDEX ix_auth_username ON authorities (username, authority);
ALTER TABLE users
    ALTER COLUMN username TYPE VARCHAR(50);
ALTER TABLE users
    ALTER COLUMN password TYPE VARCHAR(100);
