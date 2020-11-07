USE dbSblenders
GO
INSERT INTO tbInformacaoNutricionalTipo (
	informacaoNutriTipoDescricao
) VALUES (
	'Valor Energ�tico'
),
(
	'Carboidratos'
),
(
	'Prote�nas'
),
(
	'Gorduras Totais'
),
(
	'Gorduras Saturadas'
),
(
	'Gorduras Trans'
),
(
	'Fibra Alimentar'
),
(
	'S�dio'
)
GO
INSERT INTO tbInformacaoNutricional (
	produtoID,
	informacaoNutriTipoID,
	informacaoNutricionalValor
) VALUES ( -- Nuggets
	1,
	1,
	240
),
(
	1,
	2,
	10.4
),
(
	1,
	3,
	12
),
(
	1,
	4,
	5
),
(
	1,
	5,
	2.3
),
(
	1,
	6,
	3.7
),
(
	1,
	7,
	2.5
),
(
	1,
	8,
	44
),
( -- Onion Rings
	2,
	1,
	580
),
(
	2,
	2,
	14.3
),
(
	2,
	3,
	11
),
(
	2,
	4,
	7
),
(
	2,
	5,
	4.5
),
(
	2,
	6,
	4.6
),
(
	2,
	7,
	3.7
),
(
	2,
	8,
	56
),
( -- Salada Lev�ssima Sblenders
	3,
	1,
	110
),
(
	3,
	2,
	6.8
),
(
	3,
	3,
	23
),
(
	3,
	4,
	9
),
(
	3,
	5,
	6.9
),
(
	3,
	6,
	1.2
),
(
	3,
	7,
	1.6
),
(
	3,
	8,
	22
),
( -- Frango Frito
	4,
	1,
	500
),
(
	4,
	2,
	21
),
(
	4,
	3,
	22
),
(
	4,
	4,
	6
),
(
	4,
	5,
	5.2
),
(
	4,
	6,
	4.1
),
(
	4,
	7,
	1.6
),
(
	4,
	8,
	23
),
( -- Lata de Refrigerante Coca-Cola
	5,
	1,
	43
),
(
	5,
	2,
	11
),
(
	5,
	3,
	12
),
(
	5,
	4,
	5
),
(
	5,
	5,
	2.2
),
(
	5,
	6,
	3.2
),
(
	5,
	7,
	23
),
(
	5,
	8,
	18
),
( -- Lata de Refrigerante Fanta Sabor Laranja
	6,
	1,
	108
),
(
	6,
	2,
	26
),
(
	6,
	3,
	0
),
(
	6,
	4,
	0
),
(
	6,
	5,
	1.5
),
(
	6,
	6,
	2.3
),
(
	6,
	7,
	2.6
),
(
	6,
	8,
	110
),
( -- Lata de Refrigerante Guaran�
	7,
	1,
	240
),
(
	7,
	2,
	146
),
(
	7,
	3,
	36
),
(
	7,
	4,
	0
),
(
	7,
	5,
	0
),
(
	7,
	6,
	3.7
),
(
	7,
	7,
	2.3
),
(
	7,
	8,
	27
),
( -- Garrafa de Refrigerante H20H Limoneto
	8,
	1,
	140
),
(
	8,
	2,
	12
),
(
	8,
	3,
	9
),
(
	8,
	4,
	0
),
(
	8,
	5,
	1.2
),
(
	8,
	6,
	1.27
),
(
	8,
	7,
	2.6
),
(
	8,
	8,
	56
),
( -- �gua Fiji
	9,
	1,
	20
),
(
	9,
	2,
	2.4
),
(
	9,
	3,
	9
),
(
	9,
	4,
	3
),
(
	9,
	5,
	0.3
),
(
	9,
	6,
	2.7
),
(
	9,
	7,
	2.5
),
(
	9,
	8,
	44
),
( -- Sundae de Chocolate Sblenders
	10,
	1,
	500
),
(
	10,
	2,
	12.4
),
(
	10,
	3,
	13
),
(
	10,
	4,
	6
),
(
	10,
	5,
	1.4
),
(
	10,
	6,
	2.9
),
(
	10,
	7,
	2.6
),
(
	10,
	8,
	44
),
( -- Milk Shake de Morango
	11,
	1,
	500
),
(
	11,
	2,
	14
),
(
	11,
	3,
	8
),
(
	11,
	4,
	5
),
(
	11,
	5,
	3.2
),
(
	11,
	6,
	2.2
),
(
	11,
	7,
	3
),
(
	11,
	8,
	56
),
( -- Casquinha de Creme
	12,
	1,
	300
),
(
	12,
	2,
	12
),
(
	12,
	3,
	9.6
),
(
	12,
	4,
	6
),
(
	12,
	5,
	4.2
),
(
	12,
	6,
	2.43
),
(
	12,
	7,
	2
),
(
	12,
	8,
	33
),
( -- Casquinha de A�a�
	13,
	1,
	350
),
(
	13,
	2,
	12.4
),
(
	13,
	3,
	7
),
(
	13,
	4,
	6
),
(
	13,
	5,
	3
),
(
	13,
	6,
	2.5
),
(
	13,
	7,
	1.6
),
(
	13,
	8,
	34
),
( -- Molho Barbecue
	14,
	1,
	150
),
(
	14,
	2,
	12.4
),
(
	14,
	3,
	10
),
(
	14,
	4,
	6
),
(
	14,
	5,
	3
),
(
	14,
	6,
	4
),
(
	14,
	7,
	3.2
),
(
	14,
	8,
	64
),
( -- Molho de Tomate
	15,
	1,
	150
),
(
	15,
	2,
	11
),
(
	15,
	3,
	15
),
(
	15,
	4,
	6
),
(
	15,
	5,
	3.5
),
(
	15,
	6,
	2.6
),
(
	15,
	7,
	4.5
),
(
	15,
	8,
	65
),
( -- Molho de Queijo
	16,
	1,
	150
),
(
	16,
	2,
	9.3
),
(
	16,
	3,
	10
),
(
	16,
	4,
	2
),
(
	16,
	5,
	1.3
),
(
	16,
	6,
	4
),
(
	16,
	7,
	3.2
),
(
	16,
	8,
	64
),
( -- Molho de Mostarda
	17,
	1,
	150
),
(
	17,
	2,
	9.2
),
(
	17,
	3,
	13
),
(
	17,
	4,
	6
),
(
	17,
	5,
	2.2
),
(
	17,
	6,
	2.9
),
(
	17,
	7,
	2.6
),
(
	17,
	8,
	54
),
( -- Sblurger
	18,
	1,
	300
),
(
	18,
	2,
	12.4
),
(
	18,
	3,
	11
),
(
	18,
	4,
	3
),
(
	18,
	5,
	2.4
),
(
	18,
	6,
	3.1
),
(
	18,
	7,
	2.4
),
(
	18,
	8,
	38
),
( -- Ituba�na
	19,
	1,
	120
),
(
	19,
	2,
	10
),
(
	19,
	3,
	11
),
(
	19,
	4,
	5
),
(
	19,
	5,
	2
),
(
	19,
	6,
	3
),
(
	19,
	7,
	3.1
),
(
	19,
	8,
	32
),
( -- Del Vale
	20,
	1,
	130
),
(
	20,
	2,
	12.4
),
(
	20,
	3,
	13
),
(
	20,
	4,
	5.6
),
(
	20,
	5,
	3
),
(
	20,
	6,
	4
),
(
	20,
	7,
	3.3
),
(
	20,
	8,
	55
),
( -- BAER-MATE
	21,
	1,
	160
),
(
	21,
	2,
	9.4
),
(
	21,
	3,
	9
),
(
	21,
	4,
	4.8
),
(
	21,
	5,
	3.2
),
(
	21,
	6,
	2.2
),
(
	21,
	7,
	1.9
),
(
	21,
	8,
	60
)