-- begin BICYCLESHOP_CLIENT
create table BICYCLESHOP_CLIENT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    PHONE_NUMBER varchar(20) not null,
    EMAIL varchar(50) not null,
    --
    primary key (ID)
)^
-- end BICYCLESHOP_CLIENT
-- begin BICYCLESHOP_MECHANIC
create table BICYCLESHOP_MECHANIC (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID varchar(36) not null,
    HOURLY_RATE decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end BICYCLESHOP_MECHANIC
-- begin BICYCLESHOP_SPARE_PART
create table BICYCLESHOP_SPARE_PART (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TITLE varchar(255) not null,
    DESCRIPTION longvarchar,
    PRICE decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end BICYCLESHOP_SPARE_PART
-- begin BICYCLESHOP_ORDER
create table BICYCLESHOP_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CLIENT_ID varchar(36) not null,
    MECHANIC_ID varchar(36) not null,
    DESCRIPTION longvarchar,
    HOURS_SPENT integer,
    AMOUNT decimal(19, 2),
    STATUS integer not null,
    --
    primary key (ID)
)^
-- end BICYCLESHOP_ORDER
-- begin BICYCLESHOP_ORDER_SPARE_PART_LINK
create table BICYCLESHOP_ORDER_SPARE_PART_LINK (
    ORDER_ID varchar(36) not null,
    SPARE_PART_ID varchar(36) not null,
    primary key (ORDER_ID, SPARE_PART_ID)
)^
-- end BICYCLESHOP_ORDER_SPARE_PART_LINK
