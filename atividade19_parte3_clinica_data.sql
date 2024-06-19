-- Inserir dados na tabela Ambulatorios
INSERT INTO Ambulatorios (nroa, andar, capacidade) VALUES
(1, 1, 30),
(2, 1, 50),
(3, 2, 40),
(4, 2, 25),
(5, 2, 55);

-- Inserir dados na tabela Medicos
INSERT INTO Medicos (codm, nome, idade, especialidade, CPF, cidade, nroa) VALUES
(1, 'Joao', 40, 'ortopedia', '10000100000', 'Florianopolis', 1),
(2, 'Maria', 42, 'traumatologia', '10000110000', 'Blumenau', 2),
(3, 'Pedro', 51, 'pediatria', '11000110000', 'São José', 2),
(4, 'Carlos', 28, 'ortopedia', '11000100000', 'Joinville', 4),
(5, 'Marcia', 33, 'neurologia', '11000111000', 'Biguacu', 3);

-- Inserir dados na tabela Pacientes
INSERT INTO Pacientes (codp, nome, idade, cidade, CPF, doenca) VALUES
(1, 'Ana', 20, 'Florianopolis', '20000200000', 'gripe'),
(2, 'Paulo', 24, 'Palhoca', '20000220000', 'fratura'),
(3, 'Lucia', 30, 'Biguacu', '22000200000', 'tendinite'),
(4, 'Carlos', 28, 'Joinville', '11000110000', 'sarampo');

-- Inserir dados na tabela Consultas
INSERT INTO Consultas (codm, codp, data, hora) VALUES
(1, 1, '2006-06-12', '14:00:00'),
(1, 4, '2006-06-13', '09:00:00'),
(2, 1, '2006-06-13', '10:00:00'),
(2, 4, '2006-06-14', '11:00:00'),
(3, 2, '2006-06-14', '17:00:00'),
(3, 3, '2006-06-15', '18:00:00'),
(4, 1, '2006-06-16', '14:00:00'),
(5, 2, '2006-06-22', '10:00:00');

-- Inserir dados na tabela Funcionarios
INSERT INTO Funcionarios (codf, nome, idade, cidade, salario, CPF, nroa) VALUES
(1, 'Rita', 32, 'Sao Jose', 1200.00, '20000100000', 1),
(2, 'Maria', 55, 'Palhoca', 1220.00, '30000110000', 2),
(3, 'Caio', 45, 'Florianopolis', 4100.00, '41000100000', 3),
(4, 'Carlos', 28, 'Joinville', 2500.00, '51000110000', 4),
(5, 'Paula', 33, 'Florianopolis', 6100.00, '61000111000', 5);
