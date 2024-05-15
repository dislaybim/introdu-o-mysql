-- Criação de uma tabela
CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(50),
    Salario DECIMAL(10, 2)
);

-- Inserindo dados
INSERT INTO Funcionarios (ID, Nome, Cargo, Salario)
VALUES (1, 'João', 'Gerente', 5000.00),
       (2, 'Maria', 'Desenvolvedora', 7000.00),
       (3, 'Pedro', 'Analista', 6000.00);

-- Consulta de dados
SELECT * FROM Funcionarios;
