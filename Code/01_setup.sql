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
	   |---- Branch_Profiles

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

-- Commit this code to your VCS in /trunk, check out the file (if needed)
-- into /trunk in the file system.


-- alter the table.
-- batch 3
ALTER TABLE Users ADD active INT;
GO
-- end batch 3

-- Commit this code to /trunk as a secondset of code to the same file



-- We now want to work on changing our schema with a more advanced profile, without
-- disturbing the trunk of code.
-- Branch your code in your VCS to /branch_profiles
-- check  out this branch to /branch_profiles in the file system

-- batch 4
USE SQLServerCentral_Profiles
GO
-- create the users table (as is) in 

-- end batch 4



-- enhance the users table
-- batch 5
ALTER TABLE users ADD twitter VARCHAR(16), linkedin VARCHAR(4000);
GO
-- end batch 5


-- commit this change to /branch_profiles in your VCS.


-- meanwhile, a change on trunk.
-- batch 6
USE SQLServerCentral_Trunk
GO
ALTER TABLE users ADD postalcode VARCHAR(20);
GO
-- end batch 6


-- commit this code to /trunk


-- Now examine the code.
-- We have two different "Users" tables that can't easily resolve their differences.
