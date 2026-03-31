*/
==================================
Create Database and Schemas 
==================================
Script Purpose:
  This script creates a new database named 'Data Warehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver' and 'gold'.


WARNING :
  Running this script will drop the entire 'Data Warehouse' database if it exists.
  All data in the database will be permanently delated. Proceed with caution and ensure you have proper backups before running this screipt.
*/
  
USE master;
GO 

-- Drop and recreate the 'Data Warehouse' database 
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database 
CREATE DATABASE DataWarehouse; 
GO 

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
