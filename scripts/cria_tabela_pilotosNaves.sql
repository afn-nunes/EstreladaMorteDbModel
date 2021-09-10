If not exists (Select *  From sysobjects Where Name='PilotosNaves' and xtype='U')
Begin
	Create Table PilotosNaves(
		IdPiloto int NOT NULL,
		IdNave int NOT NULL,
		FlagAutorizado bit NOT NULL
	)
	
	Alter Table PilotoNaves Add constraint PK_PilotosNaves Primary Key (IdPiloto, IdNave);
	Alter Table PilotoNaves Add constraint FK_PilotosNaves_Pilotos Foreign Key (IdPiloto)
	References Pilotos (IdPiloto)
	Alter Table PilotoNaves Add constraint FK_PilotosNaves_Naves Foreign Key (IdNave)
	References Naves (IdNave)
	Alter Table PilotosNaves Add constraint DF_PilotosNaves_FlagAutorizado Default (1) For FlagAutorizado
End


