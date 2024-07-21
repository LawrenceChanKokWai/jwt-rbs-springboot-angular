############################################################
###                                                                                                          ####
### Author: Chan Kok Wai                                                                        ####
### Date: 21 July 2024                                                                             ####
### Version: 1.0                                                                                        ####
###                                                                                                          ####
############################################################

CREATE SCHEMA IF NOT EXISTS securejwt;

SET NAMES 'UTF8MB4';
SET TIME_ZONE = '-4';

USE securejwt;

DROP TABLE IF EXISTS Users;

CREATE TABLE Users
(
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone VARCHAR(30) DEFAULT NULL,
  title VARCHAR(50) DEFAULT NULL,
  bio VARCHAR(255) DEFAULT NULL,
  enabled BOOLEAN DEFAULT FALSE,
  not_locked BOOLEAN DEFAULT TRUE,
  using_mfa BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  image_url VARCHAR(255) DEFAULT 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
  CONSTRAINT UQ_Users_Email UNIQUE (email)
);