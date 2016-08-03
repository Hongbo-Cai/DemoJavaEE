DROP DATABASE IF EXISTS db_test;
CREATE DATABASE db_test;

-- user
DROP TABLE IF EXISTS db_test.user;
CREATE TABLE db_test.user (
  id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  email    VARCHAR(255) NOT NULL
  COMMENT '邮件地址',
  password VARCHAR(255) NOT NULL
  COMMENT '密码'
)
  COMMENT '用户表';

SELECT *
FROM db_test.user;