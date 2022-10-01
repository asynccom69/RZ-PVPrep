fx_version 'adamant'

game 'gta5'

description "Rz-ban by sertinox for RZHell"

client_scripts {
    'client/*.lua'
} 
server_script 'server/*.lua'

lua54 'yes'

server_scripts {
	'server/*.lua'
}

ui_page {
    'html/index.html',
}
files {
    'html/index.html',
    'html/index.js',
    'html/style.css',
}