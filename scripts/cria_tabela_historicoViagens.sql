If not exists (Select *  From sysobjects Where Name='HistoricoViagens' and xtype='U')
Begin
	Create table HistoricoViagens(
		IdNave int Not Null,
		IdPiloto int Not Null,
		DtSaida datetime Not Null,
		DtChegada datetime Null)


	Alter Table dbo.HistoricoViagens  With check Add Constraint FK_HistoricoViagens_PilotosNaves Foreign Key(IdPiloto, IdNave)
	References dbo.PilotosNaves (IdPiloto, IdNave)


	ALTER TABLE dbo.HistoricoViagens CHECK CONSTRAINT FK_HistoricoViagens_PilotosNaves
End




