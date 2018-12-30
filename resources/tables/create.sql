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