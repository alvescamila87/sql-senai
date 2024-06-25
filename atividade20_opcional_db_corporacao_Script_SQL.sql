-- Criação da tabela Departamentos
CREATE TABLE Departamentos (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(50),
    Localizacao VARCHAR(100),
    CodigoFuncionarioGerente INT
);

-- Criação da tabela Funcionarios
CREATE TABLE Funcionarios (
    Codigo INT PRIMARY KEY,
    PrimeiroNome VARCHAR(50),
    SegundoNome VARCHAR(50),
    UltimoNome VARCHAR(50),
    DataNasci DATE,
    CPF VARCHAR(11),
    RG VARCHAR(20),
    Endereco VARCHAR(100),
    CEP VARCHAR(10),
    Cidade VARCHAR(50),
    Fone VARCHAR(15),
    CodigoDepartamento INT,
    Funcao VARCHAR(50),
    Salario DECIMAL(10, 2),
    FOREIGN KEY (CodigoDepartamento) REFERENCES Departamentos(Codigo)
);

-- Inserção de registros na tabela Departamentos
INSERT INTO Departamentos (Codigo, Nome, Localizacao, CodigoFuncionarioGerente) VALUES
(1, 'Administração', 'Prédio A', 1),
(2, 'Recursos Humanos', 'Prédio B', 2),
(3, 'TI', 'Prédio C', 3),
(4, 'Marketing', 'Prédio D', 4),
(5, 'Financeiro', 'Prédio E', 5);

-- Inserção de registros na tabela Funcionarios
INSERT INTO Funcionarios (Codigo, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES
(1, 'João', NULL, 'Silva', '1980-05-15', '12345678901', 'MG1234567', 'Rua A, 100', '12345-678', 'Belo Horizonte', '31987654321', 1, 'Gerente', 5000.00),
(2, 'Maria', 'Aparecida', 'Oliveira', '1985-08-20', '23456789012', 'SP2345678', 'Rua B, 200', '23456-789', 'São Paulo', '11987654321', 2, 'Gerente', 4500.00),
(3, 'Carlos', NULL, 'Pereira', '1990-12-10', '34567890123', 'RJ3456789', 'Rua C, 300', '34567-890', 'Rio de Janeiro', '21987654321', 3, 'Gerente', 4700.00),
(4, 'Ana', 'Beatriz', 'Santos', '1992-07-22', '45678901234', 'BA4567890', 'Rua D, 400', '45678-901', 'Salvador', '71987654321', 4, 'Gerente', 4800.00),
(5, 'Pedro', NULL, 'Lima', '1987-03-30', '56789012345', 'PR5678901', 'Rua E, 500', '56789-012', 'Curitiba', '41987654321', 5, 'Gerente', 4600.00),
(6, 'Lucas', 'Henrique', 'Gomes', '1995-11-15', '67890123456', 'SC6789012', 'Rua F, 600', '67890-123', 'Florianópolis', '48987654321', 1, 'Analista', 3000.00),
(7, 'Fernanda', 'Cristina', 'Ramos', '1983-09-18', '78901234567', 'RS7890123', 'Rua G, 700', '78901-234', 'Porto Alegre', '51987654321', 2, 'Analista', 3200.00),
(8, 'Bruno', 'Alves', 'Martins', '1989-04-04', '89012345678', 'GO8901234', 'Rua H, 800', '89012-345', 'Goiânia', '62987654321', 3, 'Analista', 3100.00),
(9, 'Clara', 'Lima', 'Nogueira', '1993-05-25', '90123456789', 'ES9012345', 'Rua I, 900', '90123-456', 'Vitória', '27987654321', 4, 'Analista', 3400.00),
(10, 'Fábio', NULL, 'Souza', '1981-02-12', '01234567890', 'CE0123456', 'Rua J, 1000', '01234-567', 'Fortaleza', '85987654321', 5, 'Analista', 3500.00),
(11, 'Amanda', 'Luiza', 'Mendes', '1996-06-20', '11234567890', 'PE1123456', 'Rua K, 1100', '11234-567', 'Recife', '81987654321', 1, 'Assistente', 2500.00),
(12, 'Renato', 'Augusto', 'Farias', '1994-08-30', '21234567890', 'AL2123456', 'Rua L, 1200', '21234-567', 'Maceió', '82987654321', 2, 'Assistente', 2600.00),
(13, 'Juliana', 'Fernandes', 'Cardoso', '1988-01-15', '31234567890', 'SE3123456', 'Rua M, 1300', '31234-567', 'Aracaju', '79987654321', 3, 'Assistente', 2700.00),
(14, 'Rodrigo', 'Gustavo', 'Barros', '1986-07-10', '41234567890', 'PA4123456', 'Rua N, 1400', '41234-567', 'Belém', '91987654321', 4, 'Assistente', 2800.00),
(15, 'Patrícia', NULL, 'Lopes', '1982-10-05', '51234567890', 'AM5123456', 'Rua O, 1500', '51234-567', 'Manaus', '92987654321', 5, 'Assistente', 2900.00),
(16, 'Sérgio', 'Almeida', 'Costa', '1991-09-15', '61234567890', 'MA6123456', 'Rua P, 1600', '61234-567', 'São Luís', '98987654321', 1, 'Supervisor', 4000.00),
(17, 'Mariana', 'Gomes', 'Dias', '1984-11-22', '71234567890', 'PI7123456', 'Rua Q, 1700', '71234-567', 'Teresina', '86987654321', 2, 'Supervisor', 4100.00),
(18, 'Thiago', 'Cunha', 'Rocha', '1980-03-28', '81234567890', 'TO8123456', 'Rua R, 1800', '81234-567', 'Palmas', '63987654321', 3, 'Supervisor', 4200.00),
(19, 'Gabriela', 'Neves', 'Moreira', '1992-12-05', '91234567890', 'RR9123456', 'Rua S, 1900', '91234-567', 'Boa Vista', '95987654321', 4, 'Supervisor', 4300.00),
(20, 'Felipe', NULL, 'Freitas', '1987-01-20', '00234567890', 'RO0023456', 'Rua T, 2000', '00234-567', 'Porto Velho', '69987654321', 5, 'Supervisor', 4400.00);
