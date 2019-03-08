-- DB: MySQL trading_0
use trading_0;
-- ******************************
-- TABLE: Contract
-- ******************************
-- Select all rows from Contract
DROP PROCEDURE IF EXISTS Contract_SelectAll;
DELIMITER // ;
CREATE PROCEDURE Contract_SelectAll()
SQL SECURITY INVOKER
BEGIN
	SELECT `ContrId` ,`PrimPartId` ,`CountPartId` ,`Amount` ,`PriceId` ,`LongShort`  FROM `Contract`;
END//
DELIMITER ;
-- Select single row using Primary Key from Contract
DROP PROCEDURE IF EXISTS Contract_SelectOne;
DELIMITER // ;
CREATE PROCEDURE Contract_SelectOne(IN arg_ContrId bigint(20))
SQL SECURITY INVOKER
BEGIN
	SELECT `ContrId` ,`PrimPartId` ,`CountPartId` ,`Amount` ,`PriceId` ,`LongShort`  FROM `Contract` WHERE `ContrId`=arg_ContrId;
END//
DELIMITER ;
-- Delete single row using Primary Key from Contract
DROP PROCEDURE IF EXISTS Contract_DeleteOne;
DELIMITER // ;
CREATE PROCEDURE Contract_DeleteOne(IN arg_ContrId bigint(20))
SQL SECURITY INVOKER
BEGIN
	DELETE FROM `Contract` WHERE `ContrId`=arg_ContrId;
END//
DELIMITER ;
-- Insert row into Contract
DROP PROCEDURE IF EXISTS Contract_Insert;
DELIMITER // ;
CREATE PROCEDURE Contract_Insert(IN arg_ContrId bigint(20),IN arg_PrimPartId bigint(20),IN arg_CountPartId bigint(20),IN arg_Amount double,IN arg_PriceId bigint(20),IN arg_LongShort char(1))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Contract` (`ContrId` ,`PrimPartId` ,`CountPartId` ,`Amount` ,`PriceId` ,`LongShort` ) VALUES (arg_ContrId,arg_PrimPartId,arg_CountPartId,arg_Amount,arg_PriceId,arg_LongShort);
END//
DELIMITER ;
-- Insert row using default values into Contract
DROP PROCEDURE IF EXISTS Contract_InsertUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Contract_InsertUsingDefaults(IN arg_ContrId bigint(20),IN arg_PrimPartId bigint(20),IN arg_CountPartId bigint(20),IN arg_Amount double,IN arg_PriceId bigint(20))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Contract` (`ContrId` ,`PrimPartId` ,`CountPartId` ,`Amount` ,`PriceId` ) VALUES (arg_ContrId,arg_PrimPartId,arg_CountPartId,arg_Amount,arg_PriceId);
END//
DELIMITER ;
-- Update row using primary key for Contract
DROP PROCEDURE IF EXISTS Contract_Update;
DELIMITER // ;
CREATE PROCEDURE Contract_Update(IN arg_ContrId bigint(20),IN arg_PrimPartId bigint(20),IN arg_CountPartId bigint(20),IN arg_Amount double,IN arg_PriceId bigint(20),IN arg_LongShort char(1))
SQL SECURITY INVOKER
BEGIN
	UPDATE `Contract` SET `PrimPartId`=arg_PrimPartId,`CountPartId`=arg_CountPartId,`Amount`=arg_Amount,`PriceId`=arg_PriceId,`LongShort`=arg_LongShort WHERE `ContrId`=arg_ContrId;
END//
DELIMITER ;
-- Update row using default values and primary key for Contract
DROP PROCEDURE IF EXISTS Contract_UpdateUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Contract_UpdateUsingDefaults(IN arg_ContrId bigint(20),IN arg_PrimPartId bigint(20),IN arg_CountPartId bigint(20),IN arg_Amount double,IN arg_PriceId bigint(20))
SQL SECURITY INVOKER
BEGIN
	UPDATE `Contract` SET `PrimPartId`=arg_PrimPartId,`CountPartId`=arg_CountPartId,`Amount`=arg_Amount,`PriceId`=arg_PriceId WHERE `ContrId`=arg_ContrId;
END//
DELIMITER ;
-- END TABLE: Contract
-- ******************************
-- TABLE: Instrument
-- ******************************
-- Select all rows from Instrument
DROP PROCEDURE IF EXISTS Instrument_SelectAll;
DELIMITER // ;
CREATE PROCEDURE Instrument_SelectAll()
SQL SECURITY INVOKER
BEGIN
	SELECT `InstrId` ,`Ticker` ,`InstrDescr`  FROM `Instrument`;
END//
DELIMITER ;
-- Select single row using Primary Key from Instrument
DROP PROCEDURE IF EXISTS Instrument_SelectOne;
DELIMITER // ;
CREATE PROCEDURE Instrument_SelectOne(IN arg_InstrId bigint(20))
SQL SECURITY INVOKER
BEGIN
	SELECT `InstrId` ,`Ticker` ,`InstrDescr`  FROM `Instrument` WHERE `InstrId`=arg_InstrId;
END//
DELIMITER ;
-- Delete single row using Primary Key from Instrument
DROP PROCEDURE IF EXISTS Instrument_DeleteOne;
DELIMITER // ;
CREATE PROCEDURE Instrument_DeleteOne(IN arg_InstrId bigint(20))
SQL SECURITY INVOKER
BEGIN
	DELETE FROM `Instrument` WHERE `InstrId`=arg_InstrId;
END//
DELIMITER ;
-- Insert row into Instrument
DROP PROCEDURE IF EXISTS Instrument_Insert;
DELIMITER // ;
CREATE PROCEDURE Instrument_Insert(IN arg_InstrId bigint(20),IN arg_Ticker varchar(20),IN arg_InstrDescr varchar(255))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Instrument` (`InstrId` ,`Ticker` ,`InstrDescr` ) VALUES (arg_InstrId,arg_Ticker,arg_InstrDescr);
END//
DELIMITER ;
-- Insert row using default values into Instrument
DROP PROCEDURE IF EXISTS Instrument_InsertUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Instrument_InsertUsingDefaults(IN arg_InstrId bigint(20),IN arg_Ticker varchar(20),IN arg_InstrDescr varchar(255))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Instrument` (`InstrId` ,`Ticker` ,`InstrDescr` ) VALUES (arg_InstrId,arg_Ticker,arg_InstrDescr);
END//
DELIMITER ;
-- Update row using primary key for Instrument
DROP PROCEDURE IF EXISTS Instrument_Update;
DELIMITER // ;
CREATE PROCEDURE Instrument_Update(IN arg_InstrId bigint(20),IN arg_Ticker varchar(20),IN arg_InstrDescr varchar(255))
SQL SECURITY INVOKER
BEGIN
	UPDATE `Instrument` SET `Ticker`=arg_Ticker,`InstrDescr`=arg_InstrDescr WHERE `InstrId`=arg_InstrId;
END//
DELIMITER ;
-- Update row using default values and primary key for Instrument
DROP PROCEDURE IF EXISTS Instrument_UpdateUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Instrument_UpdateUsingDefaults(IN arg_InstrId bigint(20),IN arg_Ticker varchar(20),IN arg_InstrDescr varchar(255))
SQL SECURITY INVOKER
BEGIN
	UPDATE `Instrument` SET `Ticker`=arg_Ticker,`InstrDescr`=arg_InstrDescr WHERE `InstrId`=arg_InstrId;
END//
DELIMITER ;
-- END TABLE: Instrument
-- ******************************
-- TABLE: Party
-- ******************************
-- Select all rows from Party
DROP PROCEDURE IF EXISTS Party_SelectAll;
DELIMITER // ;
CREATE PROCEDURE Party_SelectAll()
SQL SECURITY INVOKER
BEGIN
	SELECT `ParId` ,`ParDescr` ,`Abbrev`  FROM `Party`;
END//
DELIMITER ;
-- Select single row using Primary Key from Party
DROP PROCEDURE IF EXISTS Party_SelectOne;
DELIMITER // ;
CREATE PROCEDURE Party_SelectOne(IN arg_ParId bigint(20))
SQL SECURITY INVOKER
BEGIN
	SELECT `ParId` ,`ParDescr` ,`Abbrev`  FROM `Party` WHERE `ParId`=arg_ParId;
END//
DELIMITER ;
-- Delete single row using Primary Key from Party
DROP PROCEDURE IF EXISTS Party_DeleteOne;
DELIMITER // ;
CREATE PROCEDURE Party_DeleteOne(IN arg_ParId bigint(20))
SQL SECURITY INVOKER
BEGIN
	DELETE FROM `Party` WHERE `ParId`=arg_ParId;
END//
DELIMITER ;
-- Insert row into Party
DROP PROCEDURE IF EXISTS Party_Insert;
DELIMITER // ;
CREATE PROCEDURE Party_Insert(IN arg_ParId bigint(20),IN arg_ParDescr varchar(255),IN arg_Abbrev varchar(20))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Party` (`ParId` ,`ParDescr` ,`Abbrev` ) VALUES (arg_ParId,arg_ParDescr,arg_Abbrev);
END//
DELIMITER ;
-- Insert row using default values into Party
DROP PROCEDURE IF EXISTS Party_InsertUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Party_InsertUsingDefaults(IN arg_ParId bigint(20),IN arg_ParDescr varchar(255),IN arg_Abbrev varchar(20))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Party` (`ParId` ,`ParDescr` ,`Abbrev` ) VALUES (arg_ParId,arg_ParDescr,arg_Abbrev);
END//
DELIMITER ;
-- Update row using primary key for Party
DROP PROCEDURE IF EXISTS Party_Update;
DELIMITER // ;
CREATE PROCEDURE Party_Update(IN arg_ParId bigint(20),IN arg_ParDescr varchar(255),IN arg_Abbrev varchar(20))
SQL SECURITY INVOKER
BEGIN
	UPDATE `Party` SET `ParDescr`=arg_ParDescr,`Abbrev`=arg_Abbrev WHERE `ParId`=arg_ParId;
END//
DELIMITER ;
-- Update row using default values and primary key for Party
DROP PROCEDURE IF EXISTS Party_UpdateUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Party_UpdateUsingDefaults(IN arg_ParId bigint(20),IN arg_ParDescr varchar(255),IN arg_Abbrev varchar(20))
SQL SECURITY INVOKER
BEGIN
	UPDATE `Party` SET `ParDescr`=arg_ParDescr,`Abbrev`=arg_Abbrev WHERE `ParId`=arg_ParId;
END//
DELIMITER ;
-- END TABLE: Party
-- ******************************
-- TABLE: PortContr
-- ******************************
-- Select all rows from PortContr
DROP PROCEDURE IF EXISTS PortContr_SelectAll;
DELIMITER // ;
CREATE PROCEDURE PortContr_SelectAll()
SQL SECURITY INVOKER
BEGIN
	SELECT `PortId` ,`ContrId` ,`TransId`  FROM `PortContr`;
END//
DELIMITER ;
-- Select single row using Primary Key from PortContr
DROP PROCEDURE IF EXISTS PortContr_SelectOne;
DELIMITER // ;
CREATE PROCEDURE PortContr_SelectOne(IN arg_PortId bigint(20),IN arg_ContrId bigint(20))
SQL SECURITY INVOKER
BEGIN
	SELECT `PortId` ,`ContrId` ,`TransId`  FROM `PortContr` WHERE `PortId`=arg_PortId AND `ContrId`=arg_ContrId;
END//
DELIMITER ;
-- Delete single row using Primary Key from PortContr
DROP PROCEDURE IF EXISTS PortContr_DeleteOne;
DELIMITER // ;
CREATE PROCEDURE PortContr_DeleteOne(IN arg_PortId bigint(20),IN arg_ContrId bigint(20))
SQL SECURITY INVOKER
BEGIN
	DELETE FROM `PortContr` WHERE `PortId`=arg_PortId AND `ContrId`=arg_ContrId;
END//
DELIMITER ;
-- Insert row into PortContr
DROP PROCEDURE IF EXISTS PortContr_Insert;
DELIMITER // ;
CREATE PROCEDURE PortContr_Insert(IN arg_PortId bigint(20),IN arg_ContrId bigint(20),IN arg_TransId bigint(20))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `PortContr` (`PortId` ,`ContrId` ,`TransId` ) VALUES (arg_PortId,arg_ContrId,arg_TransId);
END//
DELIMITER ;
-- Insert row using default values into PortContr
DROP PROCEDURE IF EXISTS PortContr_InsertUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE PortContr_InsertUsingDefaults(IN arg_PortId bigint(20),IN arg_ContrId bigint(20))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `PortContr` (`PortId` ,`ContrId` ) VALUES (arg_PortId,arg_ContrId);
END//
DELIMITER ;
-- Update row using primary key for PortContr
DROP PROCEDURE IF EXISTS PortContr_Update;
DELIMITER // ;
CREATE PROCEDURE PortContr_Update(IN arg_PortId bigint(20),IN arg_ContrId bigint(20),IN arg_TransId bigint(20))
SQL SECURITY INVOKER
BEGIN
	UPDATE `PortContr` SET `TransId`=arg_TransId WHERE `PortId`=arg_PortId AND `ContrId`=arg_ContrId;
END//
DELIMITER ;
-- Update row using default values and primary key for PortContr
-- **********************************
-- WARNING! NO PROCEDURE GENERATED:
-- PortContr_UpdateUsingDefaults
-- **********************************
-- END TABLE: PortContr
-- ******************************
-- TABLE: Portfolio
-- ******************************
-- Select all rows from Portfolio
DROP PROCEDURE IF EXISTS Portfolio_SelectAll;
DELIMITER // ;
CREATE PROCEDURE Portfolio_SelectAll()
SQL SECURITY INVOKER
BEGIN
	SELECT `PortId` ,`PortDescr`  FROM `Portfolio`;
END//
DELIMITER ;
-- Select single row using Primary Key from Portfolio
DROP PROCEDURE IF EXISTS Portfolio_SelectOne;
DELIMITER // ;
CREATE PROCEDURE Portfolio_SelectOne(IN arg_PortId bigint(20))
SQL SECURITY INVOKER
BEGIN
	SELECT `PortId` ,`PortDescr`  FROM `Portfolio` WHERE `PortId`=arg_PortId;
END//
DELIMITER ;
-- Delete single row using Primary Key from Portfolio
DROP PROCEDURE IF EXISTS Portfolio_DeleteOne;
DELIMITER // ;
CREATE PROCEDURE Portfolio_DeleteOne(IN arg_PortId bigint(20))
SQL SECURITY INVOKER
BEGIN
	DELETE FROM `Portfolio` WHERE `PortId`=arg_PortId;
END//
DELIMITER ;
-- Insert row into Portfolio
DROP PROCEDURE IF EXISTS Portfolio_Insert;
DELIMITER // ;
CREATE PROCEDURE Portfolio_Insert(IN arg_PortId bigint(20),IN arg_PortDescr varchar(255))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Portfolio` (`PortId` ,`PortDescr` ) VALUES (arg_PortId,arg_PortDescr);
END//
DELIMITER ;
-- Insert row using default values into Portfolio
DROP PROCEDURE IF EXISTS Portfolio_InsertUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Portfolio_InsertUsingDefaults(IN arg_PortId bigint(20),IN arg_PortDescr varchar(255))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Portfolio` (`PortId` ,`PortDescr` ) VALUES (arg_PortId,arg_PortDescr);
END//
DELIMITER ;
-- Update row using primary key for Portfolio
DROP PROCEDURE IF EXISTS Portfolio_Update;
DELIMITER // ;
CREATE PROCEDURE Portfolio_Update(IN arg_PortId bigint(20),IN arg_PortDescr varchar(255))
SQL SECURITY INVOKER
BEGIN
	UPDATE `Portfolio` SET `PortDescr`=arg_PortDescr WHERE `PortId`=arg_PortId;
END//
DELIMITER ;
-- Update row using default values and primary key for Portfolio
DROP PROCEDURE IF EXISTS Portfolio_UpdateUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Portfolio_UpdateUsingDefaults(IN arg_PortId bigint(20),IN arg_PortDescr varchar(255))
SQL SECURITY INVOKER
BEGIN
	UPDATE `Portfolio` SET `PortDescr`=arg_PortDescr WHERE `PortId`=arg_PortId;
END//
DELIMITER ;
-- END TABLE: Portfolio
-- ******************************
-- TABLE: Price
-- ******************************
-- Select all rows from Price
DROP PROCEDURE IF EXISTS Price_SelectAll;
DELIMITER // ;
CREATE PROCEDURE Price_SelectAll()
SQL SECURITY INVOKER
BEGIN
	SELECT `PriceId` ,`AsOf` ,`InstrId` ,`ParId` ,`Rate`  FROM `Price`;
END//
DELIMITER ;
-- Select single row using Primary Key from Price
DROP PROCEDURE IF EXISTS Price_SelectOne;
DELIMITER // ;
CREATE PROCEDURE Price_SelectOne(IN arg_PriceId bigint(20))
SQL SECURITY INVOKER
BEGIN
	SELECT `PriceId` ,`AsOf` ,`InstrId` ,`ParId` ,`Rate`  FROM `Price` WHERE `PriceId`=arg_PriceId;
END//
DELIMITER ;
-- Delete single row using Primary Key from Price
DROP PROCEDURE IF EXISTS Price_DeleteOne;
DELIMITER // ;
CREATE PROCEDURE Price_DeleteOne(IN arg_PriceId bigint(20))
SQL SECURITY INVOKER
BEGIN
	DELETE FROM `Price` WHERE `PriceId`=arg_PriceId;
END//
DELIMITER ;
-- Insert row into Price
DROP PROCEDURE IF EXISTS Price_Insert;
DELIMITER // ;
CREATE PROCEDURE Price_Insert(IN arg_PriceId bigint(20),IN arg_AsOf datetime,IN arg_InstrId bigint(20),IN arg_ParId bigint(20),IN arg_Rate double)
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Price` (`PriceId` ,`AsOf` ,`InstrId` ,`ParId` ,`Rate` ) VALUES (arg_PriceId,arg_AsOf,arg_InstrId,arg_ParId,arg_Rate);
END//
DELIMITER ;
-- Insert row using default values into Price
DROP PROCEDURE IF EXISTS Price_InsertUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Price_InsertUsingDefaults(IN arg_PriceId bigint(20),IN arg_AsOf datetime)
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Price` (`PriceId` ,`AsOf` ) VALUES (arg_PriceId,arg_AsOf);
END//
DELIMITER ;
-- Update row using primary key for Price
DROP PROCEDURE IF EXISTS Price_Update;
DELIMITER // ;
CREATE PROCEDURE Price_Update(IN arg_PriceId bigint(20),IN arg_AsOf datetime,IN arg_InstrId bigint(20),IN arg_ParId bigint(20),IN arg_Rate double)
SQL SECURITY INVOKER
BEGIN
	UPDATE `Price` SET `AsOf`=arg_AsOf,`InstrId`=arg_InstrId,`ParId`=arg_ParId,`Rate`=arg_Rate WHERE `PriceId`=arg_PriceId;
END//
DELIMITER ;
-- Update row using default values and primary key for Price
DROP PROCEDURE IF EXISTS Price_UpdateUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Price_UpdateUsingDefaults(IN arg_PriceId bigint(20),IN arg_AsOf datetime)
SQL SECURITY INVOKER
BEGIN
	UPDATE `Price` SET `AsOf`=arg_AsOf WHERE `PriceId`=arg_PriceId;
END//
DELIMITER ;
-- END TABLE: Price
-- ******************************
-- TABLE: Quote
-- ******************************
-- Select all rows from Quote
DROP PROCEDURE IF EXISTS Quote_SelectAll;
DELIMITER // ;
CREATE PROCEDURE Quote_SelectAll()
SQL SECURITY INVOKER
BEGIN
	SELECT `QuotId` ,`InstrId` ,`AsOf` ,`ParId` ,`Bid` ,`Ask` ,`Midd` ,`Spread`  FROM `Quote`;
END//
DELIMITER ;
-- Select single row using Primary Key from Quote
DROP PROCEDURE IF EXISTS Quote_SelectOne;
DELIMITER // ;
CREATE PROCEDURE Quote_SelectOne(IN arg_QuotId bigint(20))
SQL SECURITY INVOKER
BEGIN
	SELECT `QuotId` ,`InstrId` ,`AsOf` ,`ParId` ,`Bid` ,`Ask` ,`Midd` ,`Spread`  FROM `Quote` WHERE `QuotId`=arg_QuotId;
END//
DELIMITER ;
-- Delete single row using Primary Key from Quote
DROP PROCEDURE IF EXISTS Quote_DeleteOne;
DELIMITER // ;
CREATE PROCEDURE Quote_DeleteOne(IN arg_QuotId bigint(20))
SQL SECURITY INVOKER
BEGIN
	DELETE FROM `Quote` WHERE `QuotId`=arg_QuotId;
END//
DELIMITER ;
-- Insert row into Quote
DROP PROCEDURE IF EXISTS Quote_Insert;
DELIMITER // ;
CREATE PROCEDURE Quote_Insert(IN arg_QuotId bigint(20),IN arg_InstrId bigint(20),IN arg_AsOf datetime,IN arg_ParId bigint(20),IN arg_Bid double,IN arg_Ask double,IN arg_Midd double,IN arg_Spread double)
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Quote` (`QuotId` ,`InstrId` ,`AsOf` ,`ParId` ,`Bid` ,`Ask` ,`Midd` ,`Spread` ) VALUES (arg_QuotId,arg_InstrId,arg_AsOf,arg_ParId,arg_Bid,arg_Ask,arg_Midd,arg_Spread);
END//
DELIMITER ;
-- Insert row using default values into Quote
DROP PROCEDURE IF EXISTS Quote_InsertUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Quote_InsertUsingDefaults(IN arg_QuotId bigint(20),IN arg_InstrId bigint(20),IN arg_Bid double,IN arg_Ask double)
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Quote` (`QuotId` ,`InstrId` ,`Bid` ,`Ask` ) VALUES (arg_QuotId,arg_InstrId,arg_Bid,arg_Ask);
END//
DELIMITER ;
-- Update row using primary key for Quote
DROP PROCEDURE IF EXISTS Quote_Update;
DELIMITER // ;
CREATE PROCEDURE Quote_Update(IN arg_QuotId bigint(20),IN arg_InstrId bigint(20),IN arg_AsOf datetime,IN arg_ParId bigint(20),IN arg_Bid double,IN arg_Ask double,IN arg_Midd double,IN arg_Spread double)
SQL SECURITY INVOKER
BEGIN
	UPDATE `Quote` SET `InstrId`=arg_InstrId,`AsOf`=arg_AsOf,`ParId`=arg_ParId,`Bid`=arg_Bid,`Ask`=arg_Ask,`Midd`=arg_Midd,`Spread`=arg_Spread WHERE `QuotId`=arg_QuotId;
END//
DELIMITER ;
-- Update row using default values and primary key for Quote
DROP PROCEDURE IF EXISTS Quote_UpdateUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Quote_UpdateUsingDefaults(IN arg_QuotId bigint(20),IN arg_InstrId bigint(20),IN arg_Bid double,IN arg_Ask double)
SQL SECURITY INVOKER
BEGIN
	UPDATE `Quote` SET `InstrId`=arg_InstrId,`Bid`=arg_Bid,`Ask`=arg_Ask WHERE `QuotId`=arg_QuotId;
END//
DELIMITER ;
-- END TABLE: Quote
-- ******************************
-- TABLE: TimePoint
-- ******************************
-- Select all rows from TimePoint
DROP PROCEDURE IF EXISTS TimePoint_SelectAll;
DELIMITER // ;
CREATE PROCEDURE TimePoint_SelectAll()
SQL SECURITY INVOKER
BEGIN
	SELECT `AsOf`  FROM `TimePoint`;
END//
DELIMITER ;
-- Select single row using Primary Key from TimePoint
DROP PROCEDURE IF EXISTS TimePoint_SelectOne;
DELIMITER // ;
CREATE PROCEDURE TimePoint_SelectOne(IN arg_AsOf datetime)
SQL SECURITY INVOKER
BEGIN
	SELECT `AsOf`  FROM `TimePoint` WHERE `AsOf`=arg_AsOf;
END//
DELIMITER ;
-- Delete single row using Primary Key from TimePoint
DROP PROCEDURE IF EXISTS TimePoint_DeleteOne;
DELIMITER // ;
CREATE PROCEDURE TimePoint_DeleteOne(IN arg_AsOf datetime)
SQL SECURITY INVOKER
BEGIN
	DELETE FROM `TimePoint` WHERE `AsOf`=arg_AsOf;
END//
DELIMITER ;
-- Insert row into TimePoint
DROP PROCEDURE IF EXISTS TimePoint_Insert;
DELIMITER // ;
CREATE PROCEDURE TimePoint_Insert(IN arg_AsOf datetime)
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `TimePoint` (`AsOf` ) VALUES (arg_AsOf);
END//
DELIMITER ;
-- Insert row using default values into TimePoint
DROP PROCEDURE IF EXISTS TimePoint_InsertUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE TimePoint_InsertUsingDefaults(IN arg_AsOf datetime)
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `TimePoint` (`AsOf` ) VALUES (arg_AsOf);
END//
DELIMITER ;
-- Update row using primary key for TimePoint
-- **********************************
-- WARNING! NO PROCEDURE GENERATED:
-- TimePoint_Update
-- **********************************
-- Update row using default values and primary key for TimePoint
-- **********************************
-- WARNING! NO PROCEDURE GENERATED:
-- TimePoint_UpdateUsingDefaults
-- **********************************
-- END TABLE: TimePoint
-- ******************************
-- TABLE: Trans
-- ******************************
-- Select all rows from Trans
DROP PROCEDURE IF EXISTS Trans_SelectAll;
DELIMITER // ;
CREATE PROCEDURE Trans_SelectAll()
SQL SECURITY INVOKER
BEGIN
	SELECT `TransId` ,`AsOf`  FROM `Trans`;
END//
DELIMITER ;
-- Select single row using Primary Key from Trans
DROP PROCEDURE IF EXISTS Trans_SelectOne;
DELIMITER // ;
CREATE PROCEDURE Trans_SelectOne(IN arg_TransId bigint(20))
SQL SECURITY INVOKER
BEGIN
	SELECT `TransId` ,`AsOf`  FROM `Trans` WHERE `TransId`=arg_TransId;
END//
DELIMITER ;
-- Delete single row using Primary Key from Trans
DROP PROCEDURE IF EXISTS Trans_DeleteOne;
DELIMITER // ;
CREATE PROCEDURE Trans_DeleteOne(IN arg_TransId bigint(20))
SQL SECURITY INVOKER
BEGIN
	DELETE FROM `Trans` WHERE `TransId`=arg_TransId;
END//
DELIMITER ;
-- Insert row into Trans
DROP PROCEDURE IF EXISTS Trans_Insert;
DELIMITER // ;
CREATE PROCEDURE Trans_Insert(IN arg_TransId bigint(20),IN arg_AsOf datetime)
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Trans` (`TransId` ,`AsOf` ) VALUES (arg_TransId,arg_AsOf);
END//
DELIMITER ;
-- Insert row using default values into Trans
DROP PROCEDURE IF EXISTS Trans_InsertUsingDefaults;
DELIMITER // ;
CREATE PROCEDURE Trans_InsertUsingDefaults(IN arg_TransId bigint(20))
SQL SECURITY INVOKER
BEGIN
	INSERT INTO `Trans` (`TransId` ) VALUES (arg_TransId);
END//
DELIMITER ;
-- Update row using primary key for Trans
DROP PROCEDURE IF EXISTS Trans_Update;
DELIMITER // ;
CREATE PROCEDURE Trans_Update(IN arg_TransId bigint(20),IN arg_AsOf datetime)
SQL SECURITY INVOKER
BEGIN
	UPDATE `Trans` SET `AsOf`=arg_AsOf WHERE `TransId`=arg_TransId;
END//
DELIMITER ;
-- Update row using default values and primary key for Trans
-- **********************************
-- WARNING! NO PROCEDURE GENERATED:
-- Trans_UpdateUsingDefaults
-- **********************************
-- END TABLE: Trans
-- *******************************
-- Run command below to verify success.
-- There should be 59 procedures created.
-- If numbers don't match, please see warnings.
-- show procedure status where db='trading_0';
