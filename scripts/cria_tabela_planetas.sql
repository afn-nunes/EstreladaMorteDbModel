If not exists (Select *  From sysobjects Where Name='Planetas' and xtype='U')
Begin
	Create Table Planetas(
		IdPlaneta Int Not Null,
		Nome Varchar(50) Not Null,
		Rotacao Float Not Null,
		Orbita Float Not Null,
		Diametro Float Not Null,
		Clima Varchar(50) Not Null,
		Populacao Int Not Null 
	)	
	Alter Table Planetas With Check Add Constraint PK_Planetas Primary Key (IdPlaneta)	
End


