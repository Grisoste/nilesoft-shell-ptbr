menu(mode="multiple" title='&Desenvolver' vis=key.shift() sep=sep.bottom image=\uE26E)
{
	menu(mode="single" title='Editores' image=\uE17A)
	{
		item(title='Visual Studio Code' image=[\uE272, #22A7F2] cmd='code' args='"@sel.path"')
		separator
		item(type='file' mode="single" title='Bloco de notas do Windows' image cmd='@sys.bin\notepad.exe' args='"@sel.path"')
	}

	menu(mode="multiple" title='dotnet' image=\uE143)
	{
		item(title='Executar' cmd-line='/K dotnet run' image=\uE149)
		item(title='Monitorar (watch)' cmd-line='/K dotnet watch')
		item(title='Limpar (clean)' image=\uE0CE cmd-line='/K dotnet clean')
		separator
		item(title='Compilar depuração (debug)' cmd-line='/K dotnet build')
		item(title='Compilar lançamento (release)' cmd-line='/K dotnet build -c release /p:DebugType=None')

		menu(mode="multiple" sep="both" title='Publicar' image=\ue11f)
		{
			$publish='dotnet publish -r win-x64 -c release --output publish /*/p:CopyOutputSymbolsToPublishDirectory=false*/'
			item(title='Publicar arquivo único' sep="after" cmd-line='/K @publish --no-self-contained /p:PublishSingleFile=true')
			item(title='Implantação dependente de framework' cmd-line='/K @publish')
			item(title='Executável dependente de framework' cmd-line='/K @publish --self-contained false')
			item(title='Implantação autocontida' cmd-line='/K @publish --self-contained true')
			item(title='Arquivo único' cmd-line='/K @publish /p:PublishSingleFile=true /p:PublishTrimmed=false')
			item(title='Arquivo único reduzido (trimmed)' cmd-line='/K @publish /p:PublishSingleFile=true /p:PublishTrimmed=true')
		}
		
		item(title='ef migrations add InitialCreate' cmd-line='/K dotnet ef migrations add InitialCreate')
		item(title='ef database update' cmd-line='/K dotnet ef database update')
		separator
		item(title='Ajuda' image=\uE136 cmd-line='/k dotnet -h')
		item(title='Versão' cmd-line='/k dotnet --info')
	}
}