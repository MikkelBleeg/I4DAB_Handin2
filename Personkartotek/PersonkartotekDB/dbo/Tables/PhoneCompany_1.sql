--
-- Create Table    : 'PhoneCompany'   
-- PhnCompanyID    :  
-- Company         :  
--
CREATE TABLE PhoneCompany (
    PhnCompanyID   BIGINT IDENTITY(1,1) NOT NULL UNIQUE,
    Company        NVARCHAR(255) NOT NULL UNIQUE,
CONSTRAINT pk_PhoneCompany PRIMARY KEY CLUSTERED (PhnCompanyID))