If not exists (Select *  From sysobjects Where Name='Pilotos' and xtype='U')
Begin
	Create Table Pilotos(
		IdPiloto Int Not Null,
		Nome Varchar(200) Not Null,
		AnoNascimento Varchar(10) Not Null,
		IdPlaneta Int Not Null
	)

	Alter Table pilotos Add Constraint Pk_Pilotos Primary Key (IdPiloto);
	Alter table Pilotos Add Constraint FK_pilotos_Planetas Foreign Key(IdPlaneta)
	References Planetas(IdPlaneta)
End
