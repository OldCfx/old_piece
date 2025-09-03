fx_version 'cerulean'
game 'gta5'

name "old_piece"
description "piece game (pile ou face)"
author "OldMoney"
version "1.0.0"


client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

shared_script { "shared/*.lua" }


ui_page 'html/ui.html'

files {
	'html/ui.html',
	'html/pile.png',
	'html/face.png'
}
