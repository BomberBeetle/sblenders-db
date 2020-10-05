USE dbSblenders

UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod1.png', SINGLE_BLOB) as T1) WHERE produtoID = 1
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod2.png', SINGLE_BLOB) as T1) WHERE produtoID = 2
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod3.png', SINGLE_BLOB) as T1) WHERE produtoID = 3
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod4.png', SINGLE_BLOB) as T1) WHERE produtoID = 4
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod5.png', SINGLE_BLOB) as T1) WHERE produtoID = 5
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod6.png', SINGLE_BLOB) as T1) WHERE produtoID = 6
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod7.png', SINGLE_BLOB) as T1) WHERE produtoID = 7
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod8.png', SINGLE_BLOB) as T1) WHERE produtoID = 8
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod9.png', SINGLE_BLOB) as T1) WHERE produtoID = 9
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod10.png', SINGLE_BLOB) as T1) WHERE produtoID = 10
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod11.png', SINGLE_BLOB) as T1) WHERE produtoID = 11
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\proD12.png', SINGLE_BLOB) as T1) WHERE produtoID = 12
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod13.png', SINGLE_BLOB) as T1) WHERE produtoID = 13
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod14.png', SINGLE_BLOB) as T1) WHERE produtoID = 14
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod15.png', SINGLE_BLOB) as T1) WHERE produtoID = 15
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\prodFoto2\prod16.png', SINGLE_BLOB) as T1) WHERE produtoID = 16

UPDATE tbFuncionario SET funcionarioFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\funcFoto\han.jpg', SINGLE_BLOB) as T1) WHERE funcionarioID = 1
UPDATE tbFuncionario SET funcionarioFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\funcFoto\walter.png', SINGLE_BLOB) as T1) WHERE funcionarioID = 2

UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred1.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 1
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred2.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 2
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred3.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 3
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred4.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 4
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred5.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 5
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred6.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 6
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred7.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 7
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred8.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 8
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred9.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 9
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred10.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 10
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred11.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 11
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred12.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 12
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred13.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 13
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred14.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 14
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred15.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 15
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\ingredFoto\ingred16.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 16
