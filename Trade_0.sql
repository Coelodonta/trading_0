alter table Quote
drop index Quote_QuotId;

alter table Quote
drop index Quote_Instrid;

alter table Quote
drop index Quote_AsOf;

drop table  if exists Quote;

alter table PortContr
drop index PortContr_PortID_ContrID;

alter table PortContr
drop index PorttContr_TransId;

drop table  if exists PortContr;

alter table Contract
drop index Contract_Contrid;

alter table Contract
drop index Contract_Parties;

drop table  if exists Contract;

alter table Trans
drop index Trans_TransId;

drop table  if exists Trans;

alter table Price
drop index Price_PriceId;

alter table Price
drop index Price_AsOf_InstrId;

drop table  if exists Price;

alter table TimePoint
drop index TimePoint_AsOf;

drop table  if exists TimePoint;

alter table Portfolio
drop index portfolio_PortId;

drop table  if exists Portfolio;

alter table Instrument
drop index Instr_InstrId;

alter table Instrument
drop index Instr_Ticker;

drop table  if exists Instrument;

alter table Party
drop index Party_Parid;

alter table Party
drop index Party_Abbrev;

drop table if exists Party;

-- ============================================================
--   Table: Party                                              
-- ============================================================
create table Party
(
    ParId        BIGINT                not null,
    ParDescr     NVARCHAR(255)         not null,
    Abbrev       NVARCHAR(20)          not null,
    primary key (ParId)
);

-- ============================================================
--   Index: Party_Parid                                        
-- ============================================================
create unique index Party_Parid on Party (ParId asc);

-- ============================================================
--   Index: Party_Abbrev                                       
-- ============================================================
create index Party_Abbrev on Party (Abbrev asc);

-- ============================================================
--   Table: Instrument                                         
-- ============================================================
create table Instrument
(
    InstrId      BIGINT                not null,
    Ticker       NVARCHAR(20)          not null,
    InstrDescr   NVARCHAR(255)         not null,
    primary key (InstrId)
);

-- ============================================================
--   Index: Instr_InstrId                                      
-- ============================================================
create unique index Instr_InstrId on Instrument (InstrId asc);

-- ============================================================
--   Index: Instr_Ticker                                       
-- ============================================================
create index Instr_Ticker on Instrument (Ticker asc);

-- ============================================================
--   Table: Portfolio                                          
-- ============================================================
create table Portfolio
(
    PortId       BIGINT                not null,
    PortDescr    NVARCHAR(255)         not null,
    primary key (PortId)
);

-- ============================================================
--   Index: portfolio_PortId                                   
-- ============================================================
create unique index portfolio_PortId on Portfolio (PortId asc);

-- ============================================================
--   Table: TimePoint                                          
-- ============================================================
create table TimePoint
(
    AsOf         DATETIME              not null,
    primary key (AsOf)
);

-- ============================================================
--   Index: TimePoint_AsOf                                     
-- ============================================================
create unique index TimePoint_AsOf on TimePoint (AsOf asc);

-- ============================================================
--   Table: Price                                              
-- ============================================================
create table Price
(
    PriceId      BIGINT                not null,
    AsOf         DATETIME              not null,
    InstrId      BIGINT                        ,
    ParId        BIGINT                        ,
    Rate         DOUBLE PRECISION              ,
    primary key (PriceId)
);

-- ============================================================
--   Index: Price_PriceId                                      
-- ============================================================
create unique index Price_PriceId on Price (PriceId asc);

-- ============================================================
--   Index: Price_AsOf_InstrId                                 
-- ============================================================
create index Price_AsOf_InstrId on Price (AsOf asc, InstrId asc);

-- ============================================================
--   Table: Trans                                              
-- ============================================================
create table Trans
(
    TransId      BIGINT                not null,
    AsOf         DATETIME                      ,
    primary key (TransId)
);

-- ============================================================
--   Index: Trans_TransId                                      
-- ============================================================
create unique index Trans_TransId on Trans (TransId asc);

-- ============================================================
--   Table: Contract                                           
-- ============================================================
create table Contract
(
    ContrId      BIGINT                not null,
    PrimPartId   BIGINT                not null,
    CountPartId  BIGINT                not null,
    Amount       DOUBLE PRECISION      not null,
    PriceId      BIGINT                not null,
    LongShort    CHAR(1)                       ,
    primary key (ContrId)
);

-- ============================================================
--   Index: Contract_Contrid                                   
-- ============================================================
create unique index Contract_Contrid on Contract (ContrId asc);

-- ============================================================
--   Index: Contract_Parties                                   
-- ============================================================
create index Contract_Parties on Contract (CountPartId asc, PrimPartId asc);

-- ============================================================
--   Table: PortContr                                          
-- ============================================================
create table PortContr
(
    PortId       BIGINT                not null,
    ContrId      BIGINT                not null,
    TransId      BIGINT                        ,
    primary key (PortId, ContrId)
);

-- ============================================================
--   Index: PortContr_PortID_ContrID                           
-- ============================================================
create unique index PortContr_PortID_ContrID on PortContr (PortId asc, ContrId asc);

-- ============================================================
--   Index: PorttContr_TransId                                 
-- ============================================================
create index PorttContr_TransId on PortContr (TransId asc);

-- ============================================================
--   Table: Quote                                              
-- ============================================================
create table Quote
(
    QuotId       BIGINT                not null,
    InstrId      BIGINT                not null,
    AsOf         DATETIME                      ,
    ParId        BIGINT                        ,
    Bid          DOUBLE PRECISION      not null,
    Ask          DOUBLE PRECISION      not null,
    Midd         DOUBLE PRECISION              ,
    Spread       DOUBLE PRECISION              ,
    primary key (QuotId)
);

-- ============================================================
--   Index: Quote_QuotId                                       
-- ============================================================
create unique index Quote_QuotId on Quote (QuotId asc);

-- ============================================================
--   Index: Quote_Instrid                                      
-- ============================================================
create index Quote_Instrid on Quote (InstrId asc);

-- ============================================================
--   Index: Quote_AsOf                                         
-- ============================================================
create index Quote_AsOf on Quote (AsOf asc);
