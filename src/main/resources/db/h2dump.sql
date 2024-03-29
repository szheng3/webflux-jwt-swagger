DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (`id_role` int(11) NOT NULL AUTO_INCREMENT,`role` varchar(45) DEFAULT NULL,PRIMARY KEY (`id_role`));
INSERT INTO `role` VALUES (1,'admin'),(2,'user');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (`id` int(11) NOT NULL COMMENT '主键ID',`username` varchar(30) NOT NULL COMMENT '账号',`password` varchar(45) NOT NULL COMMENT '密码',PRIMARY KEY (`id`));
INSERT INTO `user` VALUES (1,'user','cBrlgyL2GI2GINuLUUwgojITuIufFycpLG4490dhGtY='),(2,'admin','dQNjUIMorJb8Ubj2+wVGYp6eAeYkdekqAcnYp+aRq5w=');
DROP TABLE IF EXISTS `user_has_role`;
CREATE TABLE `user_has_role` (`user_id` int(11) NOT NULL,`role_id_role` int(11) NOT NULL,PRIMARY KEY (`user_id`,`role_id_role`));
INSERT INTO `user_has_role` VALUES (2,1),(1,2);
ALTER TABLE `user_has_role` ADD CONSTRAINT `fk_user_has_role_role1` FOREIGN KEY (`role_id_role`) REFERENCES `role` (`id_role`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `user_has_role` ADD CONSTRAINT `fk_user_has_role_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
