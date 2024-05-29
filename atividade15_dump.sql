/* Dados para a tabela autor */
INSERT INTO autor (idautor, nome, email) VALUES 
(1, 'Roberto Martins Figueiredo', NULL),
(2, 'Daniel Kahneman', NULL),
(3, 'Hilary Duff', NULL),
(4, 'Robson Pinheiro', NULL),
(5, 'Cecelia Ahern', NULL),
(6, 'Arlene Einsenberg', NULL),
(7, 'Sandee Hathaway', NULL),
(8, 'Heidi Murkoff', NULL),
(9, 'Julio Cesar de Barros', NULL),
(10, 'Maria José Valero', NULL),
(11, 'Carlos Ruiz Zafón', NULL);  /* Para garantir um autor com livro de estoque zero */

/* Dados para a tabela cliente */
INSERT INTO cliente (idcliente, nome, telefone) VALUES 
(1, 'Joao Silva', '1111'),
(2, 'Maria Cunha', '2222'),
(3, 'Pedro Aguiar', '8888'),
(4, 'Elaine Luciana', '9374'),
(5, 'Antonio Pereira', '3764'),
(6, 'Catarina Dias', '999'),
(7, 'Felipe Escolar', '8787'),
(8, 'Nando Caixinha', '5478'),
(9, 'Pelé Golias', '7811'),
(10, 'Tito Vardones', '7489'),
(11, 'Fernando Pessoa', '1010');  /* Para cobrir a questão de clientes específicos */

/* Dados para a tabela editora */
INSERT INTO editora (ideditora, nome, fone) VALUES 
(1, 'Casa dos Espiritos', NULL),
(2, 'Id Editora', NULL),
(3, 'Objetiva', NULL),
(4, 'Manole', NULL),
(5, 'Novo Conceito', NULL),
(6, 'Record', NULL),
(7, 'Benvirá', NULL),
(8, 'Rocco', NULL),
(9, 'Abril', NULL),
(10, 'Sextante', NULL),
(11, 'Harper Collins', NULL);  /* Para cobrir livros de uma editora específica */

/* Dados para a tabela genero */
INSERT INTO genero (idgenero, descricao) VALUES 
(1, 'Drama'),
(2, 'Romance'),
(3, 'Psicologia'),
(4, 'Medicina'),
(5, 'Autoajuda'),
(6, 'Fantasia'),
(7, 'Aventura');  /* Para cobrir gêneros específicos */

/* Dados para a tabela livro */
INSERT INTO livro (idlivro, titulo, preco, estoque, idgenero, ideditora) VALUES 
(1, 'Pelas Ruas de Calcutá', 36.1, 0, 1, 1),  /* Estoques modificados para atender questão 1 */
(2, 'Devoted - Devoção', 27.2, 4, 2, 2),
(3, 'Rápido e Devagar - Duas Formas de Pensar', 43.9, 8, 3, 3),
(4, 'Xô, Bactéria! Tire Suas Dúvidas Com Dr. Bactéria', 32.7, 6, 4, 4),
(5, 'P.s. - Eu Te Amo', 23.5, 10, 5, 5),
(6, 'O Que Esperar Quando Você Está Esperando', 37.8, 20, 4, 6),
(7, 'As Melhores Frases Em Veja', 23.9, 0, 6, 7),  /* Estoques ajustados para atender questão 1 */
(8, 'Bichos Monstruosos', 24.9, 12, 2, 6),
(9, 'Casas Mal Assombradas', 27.9, 0, 2, 6),
(10, 'A Luz Através da Janela', 40.00, 15, 2, 5),
(11, 'Sombras do Amanhã', 35.00, 20, 6, 6),
(12, 'Fundamentos da Medicina', 55.00, 10, 4, 4),  /* Novos livros para questão 13 */
(13, 'Anatomia Humana Básica', 75.00, 15, 4, 4),
(14, 'Guia de Remédios 2024', 60.00, 20, 4, 3);

/* Associar autores a livros */
INSERT INTO escreve (idlivro, idautor) VALUES
(1, 1),   
(2, 2),   
(1, 2),   
(3, 3),   
(4, 4),   
(5, 5),
(10, 10),  
(11, 10),  
(7, 10),  /* Associando 'Maria José Valero' a um livro com estoque zero */
(12, 4),  /* Associar novos livros de Medicina */
(13, 5),
(14, 3);

/* Dados para a tabela venda */
INSERT INTO venda (idvenda, data, total, idcliente) VALUES 
(1, '2012-01-01', 30, 1),
(2, '2012-02-02', 60, 2),
(3, '2012-03-03', 90, 3),
(4, '2012-04-04', 120, 4),
(5, '2012-05-05', 50, 5),
(6, '2012-06-06', 600, 6),
(7, '2012-07-07', 70, 7),
(8, '2012-08-08', 85, 8),
(9, '2012-09-09', 100, 9),
(10, '2012-10-10', 35, 10),
(11, '2012-11-11', 99, 1),
(12, '2012-12-12', 59, 2),
(13, '2011-01-02', 46, 3),
(14, '2011-02-01', 399, 4),
(15, '2011-03-04', 42, 5),
(16, '2011-04-03', 79, 6),
(17, '2011-05-06', 130, 7),
(18, '2011-06-05', 245, 8),
(19, '2011-07-06', 19, 9),
(20, '2011-08-09', 14, 10),
(21, '2021-06-01', 300, 11),
(22, '2021-06-15', 450, 4);  /* Para garantir a venda para questão 8 */

/* Dados para a tabela itens_da_venda */
INSERT INTO itens_da_venda (idvenda, idlivro, qtd, subtotal) VALUES 
(1, 1, 1, 36.1),
(2, 2, 1, 27.2),
(3, 3, 1, 43.9),
(4, 4, 1, 32.7),
(5, 5, 1, 23.5),
(6, 6, 1, 37.8),
(7, 7, 1, 23.9),
(8, 8, 1, 24.9),
(9, 9, 1, 27.9),
(22, 6, 2, 75.6),  /* Vendendo 2 exemplares do livro 'O Que Esperar Quando Você Está Esperando' */
(22, 3, 3, 131.7);  /* Vendendo 3 exemplares do livro 'Rápido e Devagar - Duas Formas de Pensar' */
