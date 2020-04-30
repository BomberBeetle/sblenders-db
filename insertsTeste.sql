GO
USE dbSblenders
GO
INStbERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (0,'AgenteTeste')
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (1,'ClienteOnline')
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (2,'Funcionario')
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (3,'Totem')
GO
INSERT INTO tbAgente(tipoAgenteID, agenteLogin, agenteSenha) VALUES(0, 0, '9E4907956C9EB81F75DECE289725F5BBA897270569F1D7D75004C69FE08AD52F')
GO
INSERT INTO tbClienteOnline(clienteOnlineNome, clienteOnlineSobrenome) VALUES ('Anakin', 'Skywalker'), ('Obi-Wan', 'Kenobi'), ('Luke', 'Skywalker'), ('Leia', 'Organa')
GO
INSERT INTO tbTipoFuncionario(tipoFuncionarioNome) VALUES ('Permanente'), ('Tempor�rio'), ('Aprendiz'), ('Terceiro') -- N�o tenho certeza se � isso que voc� queria dizer com tipo de funcion�rio
GO
INSERT INTO tbRestaurante(restauranteNome, restauranteLat, restauranteLong) VALUES ('Sblenders Av. Tiradentes', 123.456, 789.000), ('Sblenders Avenida Paulista', 000.987, 654.321)
GO
INSERT INTO tbFuncionario(tipoFuncionarioID, agenteID, funcionarioNome, funcionarioRG, restauranteID) VALUES (1, 1, 'Han Solo', '01234567890', 1)
GO
INSERT INTO tbTotem(agenteID, restauranteID) VALUES (1, 1)
GO
INSERT INTO tbEstadoPedido(estadoPedidoNome) VALUES ('Em andamento'), ('Pronto'), ('� caminho'), ('Entregue')
GO
INSERT INTO tbPedido(restauranteID, agenteID, estadoPedidoID, instrucoes, pedidoDataHora, enderecoPedido) VALUES (1, 1, 2, 'Entregar acompanhado de sach� de mostarda.', FORMAT(GETDATE(), 'HH:mm'), 'Rua Yavin, 4'),
(2, 1, 3, 'Desenhar um cachorro na embalagem', FORMAT(GETDATE, 'HH:mm'), 'Rua Tatooine, 77'), (1, 1, 4, 'Jogar pela janela da casa', FORMAT(GETDATE(), 'HH:mm'), 'Rua uaR, 123321'),
(2, 1, 1, 'Comer um peda�o', FORMAT(GETDATE(), 'HH:mm'), 'Rua Rocky, 2')
GO
INSERT INTO tbCategoriaIngrediente(categoriaIngredienteNome) VALUES ('Salgado'), ('Doc�'), ('Amb�guo'), ('Bebida')
GO
INSERT INTO tbIngrediente(categoriaIngredienteID, ingredienteNome, ingredienteCusto, ingredienteDescricao) VALUES (1, 'Frango', 3.5, 'Frango'), (2, 'Bacon', 45, 'Ingrediente de Burgu�s, 180000� de do�ura'), (3, 'Abacaxi', 5, 'Fruta'),
(4, '�gua', 0.0, 'H20')
GO
INSERT INTO tbEstoqueIngrediente(ingredienteID, restauranteID, estoqueIngredienteQuantidade) VALUES (1, 1, 75), (2, 2, 75000), (3, 1, 50), (4, 2, 1000)
GO
INSERT INTO tbCategoriaProduto(categoriaProdutoNome) VALUES ('Lanche'), ('Salada'), ('Sobremesa'), ('Bebida') --N�o entendi muito bem o que � a categoria
GO
INSERT INTO tbProduto(categoriaProdutoID, produtoNome, produtoCusto, produtoDescricao) VALUES (1, 'SandWix', 30, 'Sandu�che M�gico, se transforma quando damos nossas m�os'), (2, 'Salada C�sar', 20, 'Salada com frango.'),
(3, 'Sundae', 9, 'Sorvete de creme com calda'), (4, 'Wewi', 10, 'Bebida gaseificada importada do Centro Acad�mico.')
GO
INSERT INTO tbProdutoIngrediente (ingredienteID, produtoID, quantidadePadrao, novoPreco) VALUES (1, 1, 4, 33.5), (2, 2, 1, 65), (3, 3, 4, 14), (4, 4, 100, 10)
GO
INSERT INTO tbPedidoProduto(pedidoID, produtoID, pedidoProdutoQtde) VALUES (1, 1, 3), (2, 2, 4), (3, 3, 5), (4, 4, 6)
GO
INSERT INTO tbPedidoProdutoIngrediente(pedidoProdutoID, produtoIngredienteID, quantidadeIngrediente) VALUES (1, 2, 45), (2, 3, 56), (3, 4, 78), (4, 1, 89)