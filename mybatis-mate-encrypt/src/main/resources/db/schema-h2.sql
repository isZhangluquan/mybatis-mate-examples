DROP TABLE IF EXISTS user;

CREATE TABLE user
(
    id BIGINT(20) NOT NULL COMMENT '主键ID',
    username VARCHAR(30) NULL DEFAULT NULL COMMENT '用户名',
    password VARCHAR(255) NULL DEFAULT NULL COMMENT '密码',
    email VARCHAR(255) NULL DEFAULT NULL COMMENT '邮箱',
    md5 VARCHAR(255) NULL DEFAULT NULL COMMENT 'MD5不可逆',
    rsa VARCHAR(3000) NULL DEFAULT NULL COMMENT 'RSA',
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS user_info;

CREATE TABLE user_info
(
    id BIGINT(20) NOT NULL COMMENT '主键ID',
    user_id BIGINT(20) NOT NULL COMMENT '用户ID',
    rsa VARCHAR(3000) NULL DEFAULT NULL COMMENT 'RSA',
    PRIMARY KEY (id)
);