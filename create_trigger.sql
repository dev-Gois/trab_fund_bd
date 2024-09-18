DELIMITER //

CREATE TRIGGER updateObjectiveAfterTransaction
AFTER INSERT ON Transaction
FOR EACH ROW
BEGIN
    -- Verifica se a transação está associada a um objetivo (objective_id não é NULL)
    IF NEW.objective_id IS NOT NULL THEN
        -- Atualiza o current_amount do objetivo associado com base na transação inserida
        UPDATE Objective
        SET current_amount = current_amount + NEW.amount
        WHERE id = NEW.objective_id;
    END IF;
END //

DELIMITER ;
