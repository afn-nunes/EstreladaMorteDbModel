If not exists (Select *  From sysobjects Where Name='Naves' and xtype='U')
Begin
	CREATE TABLE Naves(
		IdNave int Not Null,
		Nome varchar(100) Not Null,
		Modelo varchar(150) Not Null,
		Passageiros int Not Null,
		Carga float Not Null,
		Classe varchar(100) Not Null, 
	)
	Alter Table Naves With Check Add Constraint PK_Nave Primary Key (IdNave)
End
