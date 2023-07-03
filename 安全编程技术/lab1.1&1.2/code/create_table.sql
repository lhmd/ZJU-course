create database if not exists `todo`;
use `todo`;
drop table if exists `item`;
create table `item`(
    `id` varchar(50),
    `text` varchar(100),
    primary key (`id`)
);