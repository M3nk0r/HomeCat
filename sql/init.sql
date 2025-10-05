create database homecat;

create table shoppinglist
(
    userid      varchar                           not null,
    id          varchar default gen_random_uuid() not null,
    name        varchar                           not null,
    description varchar,
    count       integer default 1,
    bought      boolean,
    productid   varchar,
    category    integer,
    constraint shoppinglist_pk
        primary key (userid, id)
);

alter table shoppinglist
    owner to postgres;