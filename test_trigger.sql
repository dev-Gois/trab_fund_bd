-- Ver current_amount antes
 SELECT current_amount FROM objective WHERE id = 1;

-- Inserir uma nova transação associada ao objetivo
INSERT INTO Transaction (type, description, amount, category_id, account_id, currency_id, objective_id)
VALUES ('income', 'Salary Payment', 500.00, NULL, 1, 1, 1);

-- Ver current_amount depois ( é pra ter aumentado 500 )
 SELECT current_amount FROM objective WHERE id = 1;
