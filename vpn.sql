use vpn;

DROP TABLE IF EXISTS download;

CREATE TABLE IF NOT EXISTS `download`(
   `id` BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `url` VARCHAR(1024) NOT NULL,
   `content_size` INT(12) NOT NULL,
   `file_path` VARCHAR(1024) NOT NULL,
   `start_time` TIMESTAMP NOT NULL,
   `end_time` TIMESTAMP NOT NULL,
   `proxy` VARCHAR(256),
   `time_in_secs` INT(12) NOT NULL,
   `avg_speed` DECIMAL(20,4) NOT NULL,
   `remark` VARCHAR(128),  
   `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
   `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

