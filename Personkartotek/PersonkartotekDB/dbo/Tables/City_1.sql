--
-- Create Table    : 'City'   
-- CityID          :  
-- City            :  
-- ZipCode         :  
-- CountryID       :  (references Country.CountryID)
-- CountryCode     :  (references Country.CountryCode)
--
CREATE TABLE City (
    CityID         BIGINT IDENTITY(1,1) NOT NULL UNIQUE,
    City           VARCHAR(255) NOT NULL UNIQUE,
    ZipCode        VARCHAR(255) NOT NULL,
    CountryID      BIGINT NOT NULL,
    CountryCode    VARCHAR(255) NOT NULL,
CONSTRAINT pk_City PRIMARY KEY CLUSTERED (CityID),
CONSTRAINT fk_City FOREIGN KEY (CountryID,CountryCode)
    REFERENCES Country (CountryID,CountryCode)
    ON DELETE CASCADE
    ON UPDATE CASCADE)