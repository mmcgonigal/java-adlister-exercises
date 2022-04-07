
USE adlister_db;
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username varchar(50) NOT NULL,
    email varchar(70) NOT NULL,
    password varchar(20)NOT NULL,
    PRIMARY KEY(id)
)
