menu(type="taskbar" vis=key.shift() or key.lbutton() pos=0 title=app.name image=\uE249)
{
	item(title="Configuração" image=\uE10A cmd='"@app.cfg"')
	item(title="Gerenciador" image=\uE0F3 admin cmd='"@app.exe"')
	item(title="Diretório" image=\uE0E8 cmd='"@app.dir"')
	item(title="Versão\t"+@app.ver vis=label col=1)
	item(title="Documentação" image=\uE1C4 cmd='https://nilesoft.org/docs')
	item(title="Doar" image=\uE1A7 cmd='https://nilesoft.org/donate')
}
menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{
	menu(title="Aplicativos" image=\uE254)
	{
		item(title='Paint' image=\uE116 cmd='mspaint')
		item(title='Edge' image cmd='@sys.prog32\Microsoft\Edge\Application\msedge.exe')
		item(title='Calculadora' image=\ue1e7 cmd='calc.exe')
		item(title=str.res('regedit.exe,-16') image cmd='regedit.exe')
	}
	menu(title="Janelas" image=\uE1FB)
	{
		item(title="Janelas em cascata" cmd=command.cascade_windows)
		item(title="Mostrar janelas empilhadas" cmd=command.Show_windows_stacked)
		item(title="Mostrar janelas lado a lado" cmd=command.Show_windows_side_by_side)
		sep
		item(title="Minimizar todas as janelas" cmd=command.minimize_all_windows)
		item(title="Restaurar todas as janelas" cmd=command.restore_all_windows)
	}
	item(title="Área de trabalho" image=icon.desktop cmd=command.toggle_desktop)
	item(title="Configurações" image=icon.settings(auto, image.color1) cmd='ms-settings:')
	item(title="Gerenciador de Tarefas" sep=both image=icon.task_manager cmd='taskmgr.exe')
	item(title="Configurações da barra de tarefas" sep=both image=inherit cmd='ms-settings:taskbar')
	item(vis=key.shift() title="Reiniciar Explorer" cmd=command.restart_explorer)
}