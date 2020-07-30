GO
USE dbSblenders
GO
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (0,'AgenteTeste')
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (1,'ClienteOnline')
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (2,'Funcionario')
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (3,'Totem')
GO
INSERT INTO tbAgente(tipoAgenteID, agenteLogin, agenteSenha, agenteSalt) VALUES(0, 0, '9E4907956C9EB81F75DECE289725F5BBA897270569F1D7D75004C69FE08AD52F', 'a'), (0, 1, '8E4907956C9EB81F75DECE289725F5BBA897270569F1D7D75004C69FE08AD52F', 'b'), (0, 2, '7E4907956C9EB81F75DECE289725F5BBA897270569F1D7D75004C69FE08AD52F', 'c'), (0, 3, '6E4907956C9EB81F75DECE289725F5BBA897270569F1D7D75004C69FE08AD52F', 'd')
GO
INSERT INTO tbClienteOnline(clienteOnlineNome, clienteOnlineSobrenome, clienteOnlineVerificadoFlag, agenteID) VALUES ('Anakin', 'Skywalker', 1, 1), ('Obi-Wan', 'Kenobi', 1, 2), ('Luke', 'Skywalker', 1, 3), ('Leia', 'Organa', 1, 4)
GO
INSERT INTO tbTipoFuncionario(tipoFuncionarioNome) VALUES ('Permanente'), ('Tempor�rio'), ('Aprendiz'), ('Terceiro') -- N�o tenho certeza se � isso que voc� queria dizer com tipo de funcion�rio
GO
INSERT INTO tbRestaurante(restauranteNome, restauranteLat, restauranteLong) VALUES ('Sblenders Av. Tiradentes', 12345.4567, 65478.0000), ('Sblenders Avenida Paulista', 00000.9876, 65432.3210)
GO
INSERT INTO tbFuncionario(tipoFuncionarioID, agenteID, funcionarioNome, funcionarioRG, restauranteID, funcionarioSituacao) VALUES (1, 1, 'Han Solo', '01234567890', 1, 1)
GO
INSERT INTO tbTotem(agenteID, restauranteID) VALUES (1, 1)
GO
INSERT INTO tbEstadoPedido(estadoPedidoNome) VALUES ('Em andamento'), ('Pronto'), ('� caminho'), ('Entregue')
GO
INSERT INTO tbPedido(restauranteID, agenteID, estadoPedidoID, instrucoes, pedidoDataHora, enderecoPedido) VALUES (1, 1, 2, 'Entregar acompanhado de sach� de mostarda.', FORMAT(GETDATE(), 'HH:mm'), 'Rua Yavin, 4'),
(2, 1, 3, 'Desenhar um cachorro na embalagem', FORMAT(GETDATE(), 'HH:mm'), 'Rua Tatooine, 77'), (1, 1, 4, 'Jogar pela janela da casa', FORMAT(GETDATE(), 'HH:mm'), 'Rua uaR, 123321'),
(2, 1, 1, 'Beber um gole', FORMAT(GETDATE(), 'HH:mm'), 'Rua Rocky, 2')
GO
INSERT INTO tbCategoriaIngrediente(categoriaIngredienteNome) VALUES ('Salgado'), ('Doc�'), ('Agridoce'), ('Amargo'), ('Azedo'), ('�cido'), ('�gua'),('Refrigerante'), ('Suco'), ('Ch�')
GO
INSERT INTO tbIngrediente(categoriaIngredienteID, ingredienteNome, ingredienteCusto, ingredienteDescricao) VALUES (1, 'Frango', 2.5, 'Frango cozido desfiado'), (2, 'Chocolate', 3, 'Gotas de chocolate ao leite'),
(3, 'Pepino', 2, 'Rodelas de pepino'), (4, 'Jil�', 1.5, 'Cubos de jil� cozido'), (5, 'Extrato de Lim�o', 2, 'Extrato de lim�o siciliano'), (6, 'Pimento do reino', 3, 'Sementes de pimenta do reino'),
(7, '�gua Fiji', 5, '�gua importada diretamente de Fiji'), (8, 'Ituba�na�', 5, 'Refrigerante Ituba�na em garrafa'), (9, 'Del Vale� Maracuj�', 6.5, 'Suco de maracuj� em lata'), (10, 'B�R-MATE�', 7, 'Ch� mate'),
(1, 'P�o de forma integral', 3, 'Fatia de p�o de forma integral'), (1, 'P�o franc�s', 3, 'P�o tipo franc�s'), (1, 'Tomate', 2.5, 'Rodelas de tomate'), (1, 'Alface', 2.5, 'Folhas de alface americano'),
(2, 'Sorvete de creme', 3, 'Bola de sorvete de creme'), (5, 'Lim�o', 2, 'Rodelas de lim�o')
GO
INSERT INTO tbEstoqueIngrediente(ingredienteID, restauranteID, estoqueIngredienteQuantidade) VALUES (1, 1, 75), (2, 1, 100), (3, 1, 65), (4, 1, 30), (5, 1, 35),
(6, 2, 76), (7, 2, 127), (8, 2, 62), (9, 2, 29), (10, 2, 44)
GO
INSERT INTO tbCategoriaProduto(categoriaProdutoNome) VALUES ('Lanche'), ('Salada'), ('Sobremesa'), ('Bebida') -- N�o entendi muito bem o que � a categoria
GO
INSERT INTO tbProduto(categoriaProdutoID, produtoNome, produtoCusto, produtoDescricao) VALUES (1, 'Sandu�che de Almo�o', 26, 'P�o franc�s com frango desfiado, rodelas de pepino e sementes de pimenta do reino'),
(1, 'Sandu�che Verde', 20, 'P�o de forma integral com rodelas de pepino e cubos de jil� com extrato de lim�o siciliano'), (2, 'Salada TURBO', 30.5 ,'Salada de alface com frango desfiado, rodelas de pepino, extrato de lim�o siciliano e sementes de pimenta do reino'),
(2, 'Salada Azeda', 17.5, 'Salada de alface com cubos de jil� com extrato de lim�o siciliano'), (3, 'Soverte Contraste 1', 19, 'Duas bolas de sorvete de creme com gotas de chocolate e extrato de lim�o siciliano'),
(3, 'Sorvete Contraste 2', 21, 'Duas bolas de sorvete de creme com cubos de jil� e gotas de chocolate'), (4, 'Refri do Ver�o', 7, 'Ituba�na� com uma rodela de lim�o'), (4, 'Ch� da Tarde', 9, 'Ch� B�R-MATE� com uma rodela de lim�o')
GO
INSERT INTO tbProdutoIngrediente (ingredienteID, produtoID, quantidadePadrao, novoPreco) VALUES (12, 1, 1, 26), (1, 1, 6, 26), (3, 1, 3, 26), (6, 1, 2, 26),-- Fiz s� com os produtos mais f�ceis porque eu n�o lembro a quantidade que eu usei pra calcular o pre�o dos outros
(14, 4, 3, 17.5), (3, 4, 4, 17.5), (5, 4, 1, 17.5)
GO
INSERT INTO tbPedidoProduto(pedidoID, produtoID, pedidoProdutoQtde) VALUES (1, 1, 3), (2, 3, 4), (3, 5, 5), (4, 7, 6)
GO
INSERT INTO tbPedidoProdutoIngrediente(pedidoProdutoID, produtoIngredienteID, quantidadeIngrediente) VALUES (1, 1, 1), (1, 2, 3), (1, 3, 4), (1, 4, 7), -- Fiz s� com os dois utilizados no insert da tbProdutoIngrediente
(2, 5, 6), (2, 6, 3), (2, 7, 5)