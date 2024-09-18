-- Populando a tabela User
INSERT INTO User (name, email, password) VALUES
('Alice Smith', 'alice.smith@example.com', 'password123'),
('Bob Johnson', 'bob.johnson@example.com', 'password456'),
('Charlie Brown', 'charlie.brown@example.com', 'password789'),
('David Green', 'david.green@example.com', 'password012'),
('Eva White', 'eva.white@example.com', 'password345'),
('Frank Black', 'frank.black@example.com', 'password678'),
('Grace Blue', 'grace.blue@example.com', 'password901'),
('Hank Silver', 'hank.silver@example.com', 'password234'),
('Ivy Gold', 'ivy.gold@example.com', 'password567'),
('Jack Red', 'jack.red@example.com', 'password890');

-- Populando a tabela Bank
INSERT INTO Bank (name, image_url) VALUES
('Bank of America', 'https://example.com/boa.png'),
('Chase Bank', 'https://example.com/chase.png'),
('Wells Fargo', 'https://example.com/wellsfargo.png'),
('Citi Bank', 'https://example.com/citi.png'),
('HSBC', 'https://example.com/hsbc.png'),
('Santander', 'https://example.com/santander.png'),
('Barclays', 'https://example.com/barclays.png'),
('BNP Paribas', 'https://example.com/bnp.png'),
('Deutsche Bank', 'https://example.com/deutsche.png'),
('Credit Suisse', 'https://example.com/creditsuisse.png');

-- Populando a tabela Account
INSERT INTO Account (name, bank_id, user_id, description, type) VALUES
('Alice Checking', 1, 1, 'Main checking account', 'checking'),
('Bob Savings', 2, 2, 'Personal savings account', 'savings'),
('Charlie Investment', 3, 3, 'Long-term investments', 'investment'),
('David Credit', 4, 4, 'Credit account', 'credit'),
('Eva Checking', 5, 5, 'Primary account', 'checking'),
('Frank Savings', 6, 6, 'Retirement savings', 'savings'),
('Grace Investment', 7, 7, 'Stocks and bonds', 'investment'),
('Hank Credit', 8, 8, 'Personal credit', 'credit'),
('Ivy Checking', 9, 9, 'Main checking account', 'checking'),
('Jack Investment', 10, 10, 'Real estate investments', 'investment');

-- Populando a tabela Currency
INSERT INTO Currency (acronym, name) VALUES
('USD', 'United States Dollar'),
('EUR', 'Euro'),
('GBP', 'British Pound'),
('JPY', 'Japanese Yen'),
('AUD', 'Australian Dollar'),
('CAD', 'Canadian Dollar'),
('CHF', 'Swiss Franc'),
('CNY', 'Chinese Yuan'),
('INR', 'Indian Rupee'),
('BRL', 'Brazilian Real');

-- Populando a tabela Category
INSERT INTO Category (name, color, icon) VALUES
('Food', '#FF5733', 'https://example.com/icons/food.png'),
('Transport', '#33FF57', 'https://example.com/icons/transport.png'),
('Entertainment', '#3357FF', 'https://example.com/icons/entertainment.png'),
('Health', '#FF33A5', 'https://example.com/icons/health.png'),
('Education', '#FF5733', 'https://example.com/icons/education.png'),
('Shopping', '#33FFC5', 'https://example.com/icons/shopping.png'),
('Rent', '#5733FF', 'https://example.com/icons/rent.png'),
('Utilities', '#C533FF', 'https://example.com/icons/utilities.png'),
('Travel', '#FFC533', 'https://example.com/icons/travel.png'),
('Miscellaneous', '#A5FF33', 'https://example.com/icons/misc.png');

-- Populando a tabela Transaction
INSERT INTO Transaction (type, description, amount, category_id, account_id, currency_id) VALUES
('income', 'Salary', 3000.00, NULL, 1, 1),
('expense', 'Groceries', 200.00, 1, 1, 1),
('expense', 'Bus Ticket', 2.50, 2, 2, 1),
('expense', 'Movie', 15.00, 3, 3, 2),
('income', 'Freelance Work', 500.00, NULL, 4, 2),
('expense', 'Doctor Visit', 100.00, 4, 5, 1),
('expense', 'Online Course', 150.00, 5, 6, 3),
('expense', 'Clothes Shopping', 250.00, 6, 7, 1),
('expense', 'Rent Payment', 1200.00, 7, 8, 1),
('expense', 'Electricity Bill', 60.00, 8, 9, 1);

-- Populando a tabela Objective
INSERT INTO Objective (user_id, current_amount, objective_amount, name, description, date, color, icon) VALUES
(1, 1000.00, 5000.00, 'Vacation Fund', 'Saving for a trip to Europe', '2024-12-01', '#FF5733', 'https://example.com/icons/vacation.png'),
(2, 500.00, 1000.00, 'New Laptop', 'Saving for a new laptop', '2024-10-15', '#33FF57', 'https://example.com/icons/laptop.png'),
(3, 2000.00, 10000.00, 'Car Down Payment', 'Saving for a car', '2025-03-01', '#3357FF', 'https://example.com/icons/car.png'),
(4, 300.00, 1500.00, 'Home Renovation', 'Saving for home improvements', '2024-11-20', '#FF33A5', 'https://example.com/icons/home.png'),
(5, 150.00, 600.00, 'Gym Membership', 'Saving for an annual gym membership', '2024-10-01', '#FF5733', 'https://example.com/icons/gym.png'),
(6, 700.00, 3000.00, 'Vacation Fund', 'Saving for a trip to Asia', '2025-01-15', '#33FFC5', 'https://example.com/icons/vacation.png'),
(7, 100.00, 1000.00, 'Education Fund', 'Saving for a certification course', '2024-09-30', '#5733FF', 'https://example.com/icons/education.png'),
(8, 500.00, 2000.00, 'New Camera', 'Saving for a DSLR camera', '2024-10-20', '#C533FF', 'https://example.com/icons/camera.png'),
(9, 400.00, 1500.00, 'Emergency Fund', 'Saving for emergencies', '2025-02-01', '#FFC533', 'https://example.com/icons/emergency.png'),
(10, 250.00, 1000.00, 'Music Equipment', 'Saving for a new guitar', '2024-12-15', '#A5FF33', 'https://example.com/icons/music.png');
