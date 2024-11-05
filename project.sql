CREATE TABLE `students` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `name` varchar(64) NOT NULL DEFAULT '' COMMENT '姓名',
    `english` decimal(6,2) NOT NULL DEFAULT  '0.00' COMMENT '英语成绩',
    `chinese` decimal(6,2)  NOT NULL DEFAULT '0.00' COMMENT'语文成绩',
    `math` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '数学成绩',
    PRIMARY KEY (`id`)
)ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT '学生表';

CREATE TABLE `teachers` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT "主键ID",
    `name` varchar(64) NOT NULL DEFAULT '' COMMENT '账号',
    `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码',
    PRIMARY KEY (`id`)
)ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT '教师账户表';

INSERT INTO `students`(`name`,`english`,`chinese`,`math`)VALUES('wang',76,60,80);
INSERT INTO `students`(`name`,`english`,`chinese`)VALUES('zhang',90,70);
INSERT INTO `students`(`name`,`english`,`chinese`,`math`)VALUES('li',40,88,70);

UPDATE `students` SET `english` = 78 WHERE `name` = 'wang';
