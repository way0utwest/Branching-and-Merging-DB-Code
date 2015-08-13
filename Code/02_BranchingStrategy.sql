/*
Branching and Merging Database Code

Simple Table Merge

Copyright 2014 Steve Jones

This code is provided as is with no warranty implied.

*/
-- create table in trunk
CREATE TABLE Users(username VARCHAR(100));
-- commit

-- branch to status feature

ALTER TABLE users ADD status INT NOT NULL DEFAULT 1;

-- commit

-- merge from file system.
