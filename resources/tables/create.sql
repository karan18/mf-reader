-- To start mysql
--  brew services start mysql
-- mysql -u root -PASSWORD accounts

CREATE TABLE txns (
  id INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  txn_date DATE NOT NULL,
  txn_datetime DATETIME NOT NULL,
  bank VARCHAR(64) NOT NULL,
  reference_no VARCHAR(64) NOT NULL,
  description VARCHAR(256),
  debit DECIMAL(12,2) NOT NULL DEFAULT 0.0,
  credit DECIMAL(12,2) NOT NULL DEFAULT 0.0,
  balance DECIMAL(12,2) NOT NULL DEFAULT 0.0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE `unique_reference_no`(`bank`, `reference_no`, `description`,`txn_date`)
)ENGINE=InnoDB, charset=utf8mb4;


CREATE TABLE funds (
  id INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(256) NOT NULL UNIQUE,
  folio_number VARCHAR(64) NOT NULL UNIQUE,
  statement_description_prefix VARCHAR(64) NOT NULL,
  url VARCHAR(256) NOT NULL DEFAULT '',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
)ENGINE=InnoDB, charset=utf8mb4;

INSERT INTO funds VALUES (1, 'Aditya Birla Sun Life Equity Advantage Fund - Growth-Regular Plan', '1018999018', 'ACH DR BIRLAMF%', '', '2018-12-30 11:57:41', '2018-12-30 11:57:41');
INSERT INTO funds VALUES (2, 'TO BE DECIDED 1', 'DO_NOT_KNOW_1', 'ACH DR INDIANCLRCORPLTD X003756694', '', '2018-12-30 11:57:41', '2018-12-30 11:57:41');
INSERT INTO funds VALUES (3, 'TO BE DECIDED 2', 'DO_NOT_KNOW_2', 'ACH DR INDIANCLRCORPLTD X003715503', '', '2018-12-30 11:57:41', '2018-12-30 11:57:41');
INSERT INTO funds VALUES (4, 'TO BE DECIDED 3', 'DO_NOT_KNOW_3', 'ACH DR INDIANCLRCORPLTD X003757724', '', '2018-12-30 11:57:41', '2018-12-30 11:57:41');
INSERT INTO funds VALUES (5, 'TO BE DECIDED 4', 'DO_NOT_KNOW_4', 'ACH DR INDIANCLRCORPLTD X003756858', '', '2018-12-30 11:57:41', '2018-12-30 11:57:41');
INSERT INTO funds VALUES (6, 'TO BE DECIDED 5', 'DO_NOT_KNOW_5', 'ACH DR INDIANCLRCORPLTD X003757696', '', '2018-12-30 11:57:41', '2018-12-30 11:57:41');