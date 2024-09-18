DROP VIEW IF EXISTS User_Account_Summary;

CREATE VIEW User_Account_Summary AS
SELECT 
    User.name AS user_name,
    Account.name AS account_name,
    Bank.name AS bank_name,
    Account.type AS account_type,
    Account.description AS account_description
FROM 
    User
JOIN 
    Account ON User.id = Account.user_id
JOIN 
    Bank ON Account.bank_id = Bank.id;
