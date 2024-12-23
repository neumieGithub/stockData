create table TickersStage
(
    ticker      varchar(10)   not null,
    companyName varchar(256)  null,
    description varchar(1024) null,
    startDate   date          null,
    endDate     date          null,
    exchange    VARCHAR(64)           null
);

CREATE INDEX ix_ticker
    ON TickersStage (ticker);