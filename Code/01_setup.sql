/*
Branching and Merging Database Code

Setup for Branching Issues

Copyright 2014 Steve Jones

This code is provided as is with no warranty implied.

Each section of the code includes VCS instructions for getting code
into a VCS and working on a branch. Note the locations of where the code
should be run and then stored in your VCS.

Much of this code will need to be placed in separte files/windows to understand
the demo properly
*/


-- create two databases for two branches
CREATE DATABASE SQLServerCentral_Trunk;
GO
CREATE DATABASE SQLServerCentral_Profiles;
GO
-- end batch 1

/*
-- create this folder structure in your VCS and on your file system

----SSC_DB
       |
	   |---- Trunk
	   |---- Branch

*/

-- Batch 2
-- create a table
USE SQLServerCentral_Trunk
GO
CREATE TABLE Users
( username VARCHAR(200)
, pwd VARCHAR(50)
);
GO
-- end batch 2

-- Commit this code to your VCS in /trunk


-- alter the table.
-- batch 3

