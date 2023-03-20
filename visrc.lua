require("vis")
vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set rnu')
	vis:command('set autoindent')
	vis:command('set theme default-256')
	vis:command('set colorcolumn 80')
	
	vis:command('map! visual gq :|myfold<Enter>')
	vis:command('map! visual <C-c> :|myviscopy<Enter><Escape>u')
	vis:command('map! normal <C-p> :|myvispaste<Enter>i<Enter><Escape>')
end)



