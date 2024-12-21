-- CREATE Tickers Table Script

CREATE OR REPLACE TABLE Tickers
(
    id          INT AUTO_INCREMENT  PRIMARY KEY,
    ticker      VARCHAR(10) NOT NULL,
    companyName VARCHAR(256)    NULL,
    description VARCHAR(256)    NULL,
    startDate   DATE            NULL,
    endDate     DATE            NULL,
    exchange    INT             NULL
);
