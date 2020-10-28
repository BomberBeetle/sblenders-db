USE dbSblenders
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod1.png', SINGLE_BLOB) as T1) WHERE produtoID = 1
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod2.png', SINGLE_BLOB) as T1) WHERE produtoID = 2
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod3.png', SINGLE_BLOB) as T1) WHERE produtoID = 3
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod4.png', SINGLE_BLOB) as T1) WHERE produtoID = 4
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod5.png', SINGLE_BLOB) as T1) WHERE produtoID = 5
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod6.png', SINGLE_BLOB) as T1) WHERE produtoID = 6
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod7.png', SINGLE_BLOB) as T1) WHERE produtoID = 7
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod8.png', SINGLE_BLOB) as T1) WHERE produtoID = 8
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod9.jpg', SINGLE_BLOB) as T1) WHERE produtoID = 9
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod10.png', SINGLE_BLOB) as T1) WHERE produtoID = 10
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod11.png', SINGLE_BLOB) as T1) WHERE produtoID = 11
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/proD12.png', SINGLE_BLOB) as T1) WHERE produtoID = 12
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod13.png', SINGLE_BLOB) as T1) WHERE produtoID = 13
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod14.png', SINGLE_BLOB) as T1) WHERE produtoID = 14
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod15.png', SINGLE_BLOB) as T1) WHERE produtoID = 15
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod16.png', SINGLE_BLOB) as T1) WHERE produtoID = 16
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod17.png', SINGLE_BLOB) as T1) WHERE produtoID = 17
GO
/*UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod18.png', SINGLE_BLOB) as T1) WHERE produtoID = 18*/
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod19.jpg', SINGLE_BLOB) as T1) WHERE produtoID = 19
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod20.jpg', SINGLE_BLOB) as T1) WHERE produtoID = 20
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/prodFoto2/prod21.jpg', SINGLE_BLOB) as T1) WHERE produtoID = 21
GO
UPDATE tbFuncionario SET funcionarioFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/funcFoto/han.jpg', SINGLE_BLOB) as T1) WHERE funcionarioID = 1
UPDATE tbFuncionario SET funcionarioFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/funcFoto/walter.png', SINGLE_BLOB) as T1) WHERE funcionarioID = 2
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred1.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 1
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred2.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 2
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred3.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 3
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred4.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 4
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred5.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 5
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred6.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 6
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred7.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 7
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred8.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 8
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred9.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 9
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred10.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 10
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred11.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 11
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred12.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 12
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred13.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 13
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred14.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 14
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred15.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 15
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK 'C:\Users\guime\Documents\GitHub\sblenders-db/ingFoto/ingred16.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 16