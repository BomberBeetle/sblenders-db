USE dbSblenders

GO

INSERT INTO tbAgente(
	tipoAgenteID,
	agenteLogin,
	agenteSenha,
	agenteSalt
) VALUES(
	2,
	'funcionario3',
	'0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239',
	'0000000000000000000000000000000000000000000000000000000000000000'
),
(
	2,
	'funcionario4',
	'0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239',
	'0000000000000000000000000000000000000000000000000000000000000000'
)

GO

INSERT INTO tbFuncionario (
	tipoFuncionarioID,
	agenteID,
	funcionarioSituacao,
	funcionarioNome,
	funcionarioRG,
	restauranteID,
	funcionarioFoto
)
SELECT
	1,
	8,
	1,
	'Ricardo Afonso',
	'11235467901',
	1,
	BulkColumn
FROM Openrowset(Bulk '<caminho>\funcFoto\Ricardo.jpg', Single_Blob) as Image

GO

INSERT INTO tbFuncionario (
	tipoFuncionarioID,
	agenteID,
	funcionarioSituacao,
	funcionarioNome,
	funcionarioRG,
	restauranteID,
	funcionarioFoto
)
SELECT
	1,
	9,
	1,
	'Rafael Magalh�es',
	'12345678910',
	2,
	BulkColumn
FROM Openrowset(Bulk '<caminho>\funcFoto\Rafael.jpg', Single_Blob) as Image

GO -- Inserts para ingrediente

INSERT INTO tbIngrediente (
	categoriaIngredienteID,
	ingredienteNome,
	ingredienteCusto,
	ingredienteDescricao,
	ingredienteFoto
)
SELECT
	1,
	'P�o Italiano Integral',
	10.0,
	'P�o italiano feito com massa integral e com sementes.',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\ingFoto\italiano.jpeg', Single_Blob) as Image

GO

INSERT INTO tbIngrediente (
	categoriaIngredienteID,
	ingredienteNome,
	ingredienteCusto,
	ingredienteDescricao,
	ingredienteFoto
)
SELECT
	2,
	'F�gado Acebolado',
	12.0,
	'Fil� de f�gado acebolado feito no �leo de soja.',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\ingFoto\figado.jpg', Single_Blob) as Image

GO

INSERT INTO tbIngrediente (
	categoriaIngredienteID,
	ingredienteNome,
	ingredienteCusto,
	ingredienteDescricao,
	ingredienteFoto
)
SELECT
	3,
	'Coentro',
	5.0,
	'Folhas de coentro fresco.',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\ingFoto\coentro.jpg', Single_Blob) as Image

GO -- Inserts de produto

INSERT INTO tbProduto (
	categoriaProdutoID,
	produtoNome,
	produtoCusto,
	produtoDescricao,
	produtoFoto
)
SELECT
	1,
	'Batatas R�sticas com Ketchup, 15 unidades, 500 kcal',
	8.0,
	'Grandes fatias de batatas fritas no �leo de girassol, acompanhadas de ketchup',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\prodFoto\frita.jpg', Single_Blob) as Image

GO

INSERT INTO tbProduto (
	categoriaProdutoID,
	produtoNome,
	produtoCusto,
	produtoDescricao,
	produtoFoto
)
SELECT
	2,
	'Lata de Coca-Cola� Zero, 350 ml',
	8.0,
	'Refrigerante Coca-Cola� Zero A��car',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\prodFoto\coca.jpg', Single_Blob) as Image

GO

INSERT INTO tbProduto (
	categoriaProdutoID,
	produtoNome,
	produtoCusto,
	produtoDescricao,
	produtoFoto
)
SELECT
	3,
	'Paleta Mexicana de Morango, 500 kcal',
	8.0,
	'Picol� feito com extrato de morango, recheado com leite condesado Nestl� Mo�a',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\prodFoto\morango.png', Single_Blob) as Image
