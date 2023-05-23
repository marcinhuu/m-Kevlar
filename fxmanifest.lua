fx_version 'cerulean'
author '! marcinhu.#6158'
Description 'm-BankRobbery'
game 'gta5'


shared_scripts {
	'configs/**.lua'
}

client_scripts {
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    '@mka-lasers/client/client.lua', -- Remove if you're not planning on using the lasers. (Also set lasers to false in the config)
	'./client/*'
}

server_scripts {
	'./server/*'
}
