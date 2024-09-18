SELECT * FROM User;

SELECT * FROM Bank;

SELECT * FROM Account;

SELECT DISTINCT type FROM Account;

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