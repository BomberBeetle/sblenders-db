CREATE DATABASE dbSblenders
GO
USE dbSblenders
GO
CREATE TABLE tbTipoAgente (
	tipoAgenteID INT,
	tipoAgenteNome VARCHAR(15) NOT NULL,

	CONSTRAINT PK_tbTipoAgente PRIMARY KEY (tipoAgenteID),
	CONSTRAINT UQ_tbTipoAgente_tipoAgenteNome UNIQUE (tipoAgenteNome)
)
GO
CREATE TABLE tbAgente (
	agenteID INT IDENTITY(1,1),
	tipoAgenteID INT NOT NULL,
	agenteLogin VARCHAR(254) NOT NULL,
	agenteSalt  CHAR(64) NOT NULL,
	agenteSenha CHAR(64) NOT NULL,
	agenteToken CHAR(64),

	CONSTRAINT PK_tbAgente PRIMARY KEY (agenteID),
	CONSTRAINT FK_tbAgente_tipoAgenteID FOREIGN KEY (tipoAgenteID) REFERENCES tbTipoAgente,
	CONSTRAINT UQ_tbAgente_agenteLogin UNIQUE(agenteLogin)
)
GO
CREATE TABLE tbClienteOnline (
	clienteOnlineID INT IDENTITY(1,1),
	agenteID INT NOT NULL,
	clienteOnlineNome VARCHAR(50) NOT NULL,
	clienteOnlineSobrenome VARCHAR(50) NOT NULL,
	clienteOnlineUrlVerifica CHAR(32),
	clienteOnlineVerificadoFlag BIT NOT NULL,

	CONSTRAINT PK_tbClienteOnline PRIMARY KEY (clienteOnlineID),
	CONSTRAINT FK_tbClienteOnline_agenteID FOREIGN KEY (agenteID) REFERENCES tbAgente,
	CONSTRAINT UQ_tbClienteOnline_agenteID UNIQUE (agenteID)
)
GO
CREATE TABLE tbTipoFuncionario (
	tipoFuncionarioID INT IDENTITY(1,1),
	tipoFuncionarioNome VARCHAR(15) NOT NULL,

	CONSTRAINT PK_tbTipoFuncionario PRIMARY KEY (tipoFuncionarioID),
	CONSTRAINT UQ_tbTipoFuncionario_tipoFuncionarioNome UNIQUE (tipoFuncionarioNome)
)
GO
GO
CREATE TABLE tbRestaurante (
	restauranteID INT IDENTITY(1,1),
	restauranteNome VARCHAR(50),
	restauranteLat DECIMAL(7,4),
	restauranteLong DECIMAL(7,4),

	CONSTRAINT PK_tbRestaurante PRIMARY KEY (restauranteID),
	/*
		Todo os campos abaixo são UNIQUE para que não haja conflito no cadastro, como por exemplo, se houverem duas unidades na mesma avenida,
		não existirão dois "Sblenders Avenida A", mas sim um "Sblenders Avenida A 1" e "Sblenders Avenida A 2", ou algo assim
	*/
	CONSTRAINT UQ_tbRestaurante_restauranteNome UNIQUE (restauranteNome),
	CONSTRAINT UQ_tbRestaurante_restauranteLat UNIQUE (restauranteLat),
	CONSTRAINT UQ_tbRestaurante_restauranteLong UNIQUE (restauranteLong)
)
CREATE TABLE tbFuncionario (
	funcionarioID INT IDENTITY(1,1),
	tipoFuncionarioID INT NOT NULL,
	agenteID INT NOT NULL,
	funcionarioNome VARCHAR(100) NOT NULL,
	funcionarioRG CHAR(11) NOT NULL,
	funcionarioFoto BINARY,
	restauranteID INT NOT NULL,

	CONSTRAINT PK_tbFuncionario PRIMARY KEY (funcionarioID),
	CONSTRAINT FK_tbFuncionario_tipoFuncionarioID FOREIGN KEY (tipoFuncionarioID) REFERENCES tbTipoFuncionario,
	CONSTRAINT FK_tbFuncionario_tbAgente FOREIGN KEY (agenteID) REFERENCES tbAgente,
	CONSTRAINT UQ_tbFuncionario_tbAgente UNIQUE (agenteID),
	CONSTRAINT FK_tbFuncionario_tbRestaurante FOREIGN KEY (restauranteID) REFERENCES tbRestaurante,
	CONSTRAINT UQ_tbFuncionario_funcionarioRG UNIQUE (funcionarioRG)
)

GO
CREATE TABLE tbTotem (
	totemID INT IDENTITY(1,1),
	agenteID INT NOT NULL,
	restauranteID INT NOT NULL,

	CONSTRAINT PK_tbTotem PRIMARY KEY (totemID),
	CONSTRAINT FK_tbTotem_agenteID FOREIGN KEY (agenteID) REFERENCES tbAgente,
	CONSTRAINT UQ_tbTotem_agenteID UNIQUE (agenteID),
	CONSTRAINT FK_tbTotem_restauranteID FOREIGN KEY (restauranteID) REFERENCES tbRestaurante
)
GO
CREATE TABLE tbEstadoPedido (
	estadoPedidoID INT IDENTITY(1,1),
	estadoPedidoNome VARCHAR(15) NOT NULL,

	CONSTRAINT PK_tbEstadoPedido PRIMARY KEY (estadoPedidoID),
	CONSTRAINT UQ_tbEstadoPedido_estadoPedidoNome UNIQUE (estadoPedidoNome)
)
GO
CREATE TABLE tbPedido (
	pedidoID INT IDENTITY(1,1),
	restauranteID INT NOT NULL,
	agenteID INT NOT NULL,
	estadoPedidoID INT NOT NULL,
	instrucoes VARCHAR(280),
	pedidoDataHora DATETIME,
	enderecoPedido VARCHAR(70),

	CONSTRAINT PK_tbPedido PRIMARY KEY (pedidoID),
	CONSTRAINT FK_tbPedido_restauranteID FOREIGN KEY (restauranteID) REFERENCES tbRestaurante,
	CONSTRAINT FK_tbPedido_agenteID FOREIGN KEY (agenteID) REFERENCES tbAgente,
	CONSTRAINT FK_tbPedido_estadoPedidoID FOREIGN KEY (estadoPedidoID) REFERENCES tbEstadoPedido
)
GO
CREATE TABLE tbCategoriaIngrediente (
	categoriaIngredienteID INT IDENTITY(1,1),
	categoriaIngredienteNome VARCHAR(30),

	CONSTRAINT PK_tbCategoriaIngrediente PRIMARY KEY (categoriaIngredienteID),
	CONSTRAINT UQ_tbCategoriaIngrediente_categoriaIngredienteNome UNIQUE (categoriaIngredienteNome)
)
GO
CREATE TABLE tbIngrediente (
	ingredienteID INT IDENTITY(1,1),
	categoriaIngredienteID INT NOT NULL,
	ingredienteNome VARCHAR(50) NOT NULL,
	ingredienteCusto DECIMAL(5,2),
	ingredienteDescricao VARCHAR(200),
	ingredienteFoto BINARY,

	CONSTRAINT PK_tbIngrediente PRIMARY KEY (ingredienteID),
	CONSTRAINT FK_tbIngrediente_categoriaIngredienteID FOREIGN KEY (categoriaIngredienteID) REFERENCES tbCategoriaIngrediente,
	CONSTRAINT UQ_tbIngrediente_ingredienteNome UNIQUE (ingredienteNome)
)
GO
CREATE TABLE tbEstoqueIngrediente (
	ingredienteID INT NOT NULL,
	restauranteID INT NOT NULL,
	estoqueIngredienteQuantidade INT NOT NULL,

	CONSTRAINT FK_tbEstoqueIngrediente_ingredienteID FOREIGN KEY (ingredienteID) REFERENCES tbIngrediente,
	CONSTRAINT FK_tbEstoqueIngrediente_restauranteID FOREIGN KEY (restauranteID) REFERENCES tbRestaurante,
)
GO
CREATE TABLE tbCategoriaProduto (
	categoriaProdutoID INT IDENTITY(1,1),
	categoriaProdutoNome VARCHAR(30) NOT NULL,

	CONSTRAINT PK_tbCategoriaProduto PRIMARY KEY (categoriaProdutoID),
	CONSTRAINT UQ_tbCategoriaProduto_categoriaProdutoNome UNIQUE (categoriaProdutoNome)
)
GO
CREATE TABLE tbProduto (
	produtoID INT IDENTITY(1,1),
	categoriaProdutoID INT NOT NULL,
	produtoNome VARCHAR(50) NOT NULL,
	produtoCusto DECIMAL(5,2) NOT NULL,
	produtoDescricao VARCHAR(300),
	produtoFoto BINARY,

	CONSTRAINT PK_tbProduto PRIMARY KEY (produtoID),
	CONSTRAINT FK_tbProduto_categoriaProdutoID FOREIGN KEY (categoriaProdutoID) REFERENCES tbCategoriaProduto,
	CONSTRAINT UQ_tbProduto_produtoNome UNIQUE (produtoNome)
)
GO
CREATE TABLE tbProdutoIngrediente (
	produtoIngredienteID INT IDENTITY(1,1),
	ingredienteID INT NOT NULL,
	produtoID INT NOT NULL,
	quantidadePadrao INT NOT NULL,
	novoPreco DECIMAL(5,2) NOT NULL,

	CONSTRAINT PK_tbProdutoIngrediente PRIMARY KEY (produtoIngredienteID),
	CONSTRAINT FK_tbProdutoIngrediente_ingredienteID FOREIGN KEY (ingredienteID) REFERENCES tbIngrediente,
	CONSTRAINT FK_tbProdutoIngrediente_produtoID FOREIGN KEY (produtoID) REFERENCES tbProduto
)
GO
CREATE TABLE tbPedidoProduto (
	pedidoProdutoID INT IDENTITY(1,1),
	pedidoID INT NOT NULL,
	produtoID INT NOT NULL,
	pedidoProdutoQtde INT NOT NULL,

	CONSTRAINT PK_tbPedidoProduto PRIMARY KEY (pedidoProdutoID),
	CONSTRAINT FK_tbPedidoProduto_pedidoID FOREIGN KEY (pedidoID) REFERENCES tbPedido,
	CONSTRAINT FK_tbPedidoProduto_produtoID FOREIGN KEY (produtoID) REFERENCES tbProduto
)
GO
CREATE TABLE tbPedidoProdutoIngrediente (
	pedidoProdutoIngredienteID INT NOT NULL IDENTITY,
	pedidoProdutoID INT NOT NULL,
	produtoIngredienteID INT NOT NULL,
	quantidadeIngrediente INT NOT NULL,

	CONSTRAINT PK_tbPedidoProdutoIngrediente PRIMARY KEY (pedidoProdutoIngredienteID),
	CONSTRAINT FK_tbPedidoProdutoIngrediente_pedidoProdutoID FOREIGN KEY (pedidoProdutoID) REFERENCES tbPedidoProduto,
	CONSTRAINT FK_tbPedidoProdutoIngrediente_produtoIngredienteID FOREIGN KEY (produtoIngredienteID) REFERENCES tbProdutoIngrediente
)