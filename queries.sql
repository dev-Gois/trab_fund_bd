SELECT * FROM User;


SELECT DISTINCT type FROM Account;


SELECT 
    User.name AS user_name,
    Account.name AS account_name,
    Transaction.description AS transaction_description,
    Transaction.amount AS transaction_amount,
    Transaction.type AS transaction_type
FROM 
    Transaction
JOIN 
    Account ON Transaction.account_id = Account.id
JOIN 
    User ON Account.user_id = User.id
ORDER BY 
    User.name, Account.name;

SELECT name 
FROM User
WHERE id IN (
    SELECT user_id
    FROM Account
    WHERE id IN (
        SELECT account_id
        FROM Transaction
        WHERE amount > 1000
    )
);



UPDATE Account
SET
    description = NULL
WHERE
    name = 'Eva Checking';

SELECT * FROM Account WHERE description IS NULL;

UPDATE User
SET
    email = 'grace.blue.updated@example.com'
WHERE
    name = 'Grace Blue';

DELETE FROM Transaction
WHERE
    account_id IN (
        SELECT id
        FROM Account
        WHERE
            user_id = (
                SELECT id
                FROM User
                WHERE
                    name = 'Ivy Gold'
            )
    );

DELETE FROM Account
WHERE
    user_id = (
        SELECT id
        FROM User
        WHERE
            name = 'Ivy Gold'
    );

DELETE FROM Objective
WHERE
    user_id = (
        SELECT id
        FROM User
        WHERE
            name = 'Ivy Gold'
    );

DELETE FROM User WHERE name = 'Ivy Gold';
