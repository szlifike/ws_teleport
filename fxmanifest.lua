fx_version 'cerulean'
games { 'gta5' }
author 'Szlifike'
description 'Teleport System'
lua54 'yes'
version '1.0'

shared_script {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua',
    'config.lua'
}
client_scripts {
    'client/main.lua',
    'core/core_c.lua'
}