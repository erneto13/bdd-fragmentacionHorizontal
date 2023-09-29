USE [nombreBaseDatos]
SELECT * FROM dbo.nombreTabla
UNION
SELECT * FROM [ipServidor].[nombreBaseDatos].[dbo].[nombreTabla]