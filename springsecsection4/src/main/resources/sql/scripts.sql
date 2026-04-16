create table users(username varchar(50) not null primary key,password varchar(500) not null,enabled boolean not null);
create table authorities (username varchar(50) not null,authority varchar(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username,authority);



INSERT IGNORE INTO `users` VALUES ('user','{noop}EasyBytes@12345','1');
INSERT IGNORE INTO `authorities` VALUES('user', 'read');


INSERT IGNORE INTO `users` VALUES ('admin','{bcrypt}$2a$12$rsq3HqSWQueNWbUPo1WklOEiWcZE3/QT1yotaVoLVx7f4k.QxdMM.','1');
INSERT IGNORE INTO `authorities` VALUES('admin','admin');


CREATE TABLE `customer` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `email` varchar(45) not null ,
    `pwd` varchar(200) not NULL,
    `role` varchar(45) not null,
    PRIMARY KEY (`id`)
)



INSERT INTO `customer` (`email`,`pwd`, `role`) VALUES ('happy@exemple.com','{noop}EasyBytes@12345','read');
INSERT INTO `customer` (`email`,`pwd`, `role`) VALUES ('admin@exemple.com','{bcrypt}$2a$12$rsq3HqSWQueNWbUPo1WklOEiWcZE3/QT1yotaVoLVx7f4k.QxdMM.','admin');



