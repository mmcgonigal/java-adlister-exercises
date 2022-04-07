USE adlister_db;

DROP TABLE IF EXISTS ads;

CREATE TABLE IF NOT EXISTS ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED NOT NULL,
    title       varchar(100)  NOT NULL,
    description TEXT NOT null,
    FOREIGN KEY(user_id)
REFERENCES users(id),
PRIMARY KEY (id)
);