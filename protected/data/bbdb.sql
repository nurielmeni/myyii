CREATE TABLE IF NOT EXISTS `tbl_user` 
(
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `email` Varchar(256) NOT NULL,
  `username` Varchar(128),
  `password` Varchar(128),
  `last_login_time` Datetime,
  `create_time` DATETIME,
  `create_user_id` INTEGER,
  `update_time` DATETIME,
  `update_user_id` INTEGER
) ENGINE = InnoDB
;
CREATE TABLE IF NOT EXISTS `tbl_screen`
(
`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(128) NOT NULL,
`description` TEXT,
`monitor_id` INT,
`client_id` INT,
`create_time` DATETIME,
`create_user_id` INTEGER,
`update_time` DATETIME,
`update_user_id` INTEGER
);

CREATE TABLE IF NOT EXISTS `tbl_ad`
(
`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(128),
`description` TEXT,
`html` TEXT,
`create_time` DATETIME,
`create_user_id` INTEGER,
`update_time` DATETIME,
`update_user_id` INTEGER
);
CREATE TABLE IF NOT EXISTS `tbl_monitor` 
(
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` Varchar(128) NOT NULL,
  `size` INT NOT NULL,
   `create_time` DATETIME,
  `create_user_id` INTEGER,
  `update_time` DATETIME,
  `update_user_id` INTEGER
) ENGINE = InnoDB
;
CREATE TABLE IF NOT EXISTS `tbl_client` 
(
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` Varchar(128) NOT NULL,
  `os` Varchar(64) NOT NULL,
   `create_time` DATETIME,
  `create_user_id` INTEGER,
  `update_time` DATETIME,
  `update_user_id` INTEGER
) ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `tbl_screen_ad_assignment`
(
  `screen_id` Int(11) NOT NULL,
  `ad_id` Int(11) NOT NULL,
  `element_id` VARCHAR(64) NOT NULL,
  `create_time` DATETIME,
  `create_user_id` INTEGER,
  `update_time` DATETIME,
  `update_user_id` INTEGER,
 PRIMARY KEY (`screen_id`,`ad_id`)
) ENGINE = InnoDB
;
ALTER TABLE `tbl_screen` ADD CONSTRAINT `FK_screen_monitor` FOREIGN KEY 
(`monitor_id`) REFERENCES `tbl_monitor` (`id`) ON DELETE CASCADE ON 
UPDATE RESTRICT;

ALTER TABLE `tbl_screen` ADD CONSTRAINT `FK_screen_client` FOREIGN KEY 
(`client_id`) REFERENCES `tbl_client` (`id`) ON DELETE CASCADE ON 
UPDATE RESTRICT;

ALTER TABLE `tbl_screen_ad_assignment` ADD CONSTRAINT `FK_screen_
ad` FOREIGN KEY (`screen_id`) REFERENCES `tbl_screen` (`id`) ON 
DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE `tbl_screen_ad_assignment` ADD CONSTRAINT `FK_ad_
screen` FOREIGN KEY (`ad_id`) REFERENCES `tbl_ad` (`id`) ON 
DELETE CASCADE ON UPDATE RESTRICT;  
