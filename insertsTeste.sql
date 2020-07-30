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
INSERT INTO tbTipoFuncionario(tipoFuncionarioNome) VALUES ('Permanente'), ('Temporário'), ('Aprendiz'), ('Terceiro') -- Nâo tenho certeza se é isso que você queria dizer com tipo de funcionário
GO
INSERT INTO tbRestaurante(restauranteNome, restauranteLat, restauranteLong) VALUES ('Sblenders Av. Tiradentes', 12345.4567, 65478.0000), ('Sblenders Avenida Paulista', 00000.9876, 65432.3210)
GO
INSERT INTO tbFuncionario(tipoFuncionarioID, agenteID, funcionarioNome, funcionarioRG, restauranteID, funcionarioSituacao) VALUES (1, 1, 'Han Solo', '01234567890', 1, 1)
GO
INSERT INTO tbTotem(agenteID, restauranteID) VALUES (1, 1)
GO
INSERT INTO tbEstadoPedido(estadoPedidoNome) VALUES ('Em andamento'), ('Pronto'), ('À caminho'), ('Entregue')
GO
INSERT INTO tbPedido(restauranteID, agenteID, estadoPedidoID, instrucoes, pedidoDataHora, enderecoPedido) VALUES (1, 1, 2, 'Entregar acompanhado de sachê de mostarda.', FORMAT(GETDATE(), 'HH:mm'), 'Rua Yavin, 4'),
(2, 1, 3, 'Desenhar um cachorro na embalagem', FORMAT(GETDATE(), 'HH:mm'), 'Rua Tatooine, 77'), (1, 1, 4, 'Jogar pela janela da casa', FORMAT(GETDATE(), 'HH:mm'), 'Rua uaR, 123321'),
(2, 1, 1, 'Beber um gole', FORMAT(GETDATE(), 'HH:mm'), 'Rua Rocky, 2')
GO
INSERT INTO tbCategoriaIngrediente(categoriaIngredienteNome) VALUES ('Salgado'), ('Docê'), ('Agridoce'), ('Amargo'), ('Azedo'), ('Ácido'), ('Água'),('Refrigerante'), ('Suco'), ('Chá')
GO
INSERT INTO tbIngrediente(categoriaIngredienteID, ingredienteNome, ingredienteCusto, ingredienteDescricao) VALUES (1, 'Frango', 2.5, 'Frango cozido desfiado'), (2, 'Chocolate', 3, 'Gotas de chocolate ao leite'),
(3, 'Pepino', 2, 'Rodelas de pepino'), (4, 'Jiló', 1.5, 'Cubos de jiló cozido'), (5, 'Extrato de Limão', 2, 'Extrato de limão siciliano'), (6, 'Pimento do reino', 3, 'Sementes de pimenta do reino'),
(7, 'Água Fiji', 5, 'Água importada diretamente de Fiji'), (8, 'Itubaína©', 5, 'Refrigerante Itubaína em garrafa'), (9, 'Del Vale© Maracujá', 6.5, 'Suco de maracujá em lata'), (10, 'BÆR-MATE®', 7, 'Chá mate'),
(1, 'Pão de forma integral', 3, 'Fatia de pão de forma integral'), (1, 'Pão francês', 3, 'Pão tipo francês'), (1, 'Tomate', 2.5, 'Rodelas de tomate'), (1, 'Alface', 2.5, 'Folhas de alface americano'),
(2, 'Sorvete de creme', 3, 'Bola de sorvete de creme'), (5, 'Limão', 2, 'Rodelas de limão')
GO
INSERT INTO tbEstoqueIngrediente(ingredienteID, restauranteID, estoqueIngredienteQuantidade) VALUES (1, 1, 75), (2, 1, 100), (3, 1, 65), (4, 1, 30), (5, 1, 35),
(6, 2, 76), (7, 2, 127), (8, 2, 62), (9, 2, 29), (10, 2, 44)
GO
INSERT INTO tbCategoriaProduto(categoriaProdutoNome) VALUES ('Lanche'), ('Salada'), ('Sobremesa'), ('Bebida') -- Não entendi muito bem o que é a categoria
GO
INSERT INTO tbProduto(categoriaProdutoID, produtoNome, produtoCusto, produtoDescricao) VALUES (1, 'Sanduíche de Almoço', 26, 'Pão francês com frango desfiado, rodelas de pepino e sementes de pimenta do reino'),
(1, 'Sanduíche Verde', 20, 'Pão de forma integral com rodelas de pepino e cubos de jiló com extrato de limão siciliano'), (2, 'Salada TURBO', 30.5 ,'Salada de alface com frango desfiado, rodelas de pepino, extrato de limão siciliano e sementes de pimenta do reino'),
(2, 'Salada Azeda', 17.5, 'Salada de alface com cubos de jiló com extrato de limão siciliano'), (3, 'Soverte Contraste 1', 19, 'Duas bolas de sorvete de creme com gotas de chocolate e extrato de limão siciliano'),
(3, 'Sorvete Contraste 2', 21, 'Duas bolas de sorvete de creme com cubos de jiló e gotas de chocolate'), (4, 'Refri do Verão', 7, 'Itubaína® com uma rodela de limão'), (4, 'Chá da Tarde', 9, 'Chá BÆR-MATE® com uma rodela de limão')
GO
INSERT INTO tbProdutoIngrediente (ingredienteID, produtoID, quantidadePadrao, novoPreco) VALUES (12, 1, 1, 26), (1, 1, 6, 26), (3, 1, 3, 26), (6, 1, 2, 26),-- Fiz só com os produtos mais fáceis porque eu não lembro a quantidade que eu usei pra calcular o preço dos outros
(14, 4, 3, 17.5), (3, 4, 4, 17.5), (5, 4, 1, 17.5)
GO
INSERT INTO tbPedidoProduto(pedidoID, produtoID, pedidoProdutoQtde) VALUES (1, 1, 3), (2, 3, 4), (3, 5, 5), (4, 7, 6)
GO
INSERT INTO tbPedidoProdutoIngrediente(pedidoProdutoID, produtoIngredienteID, quantidadeIngrediente) VALUES (1, 1, 1), (1, 2, 3), (1, 3, 4), (1, 4, 7), -- Fiz só com os dois utilizados no insert da tbProdutoIngrediente
(2, 5, 6), (2, 6, 3), (2, 7, 5)