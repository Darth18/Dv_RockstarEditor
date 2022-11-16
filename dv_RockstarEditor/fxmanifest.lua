fx_version 'adamant'

game 'gta5'
lua54 'yes'
name 'dv_RockstarEditor'

client_scripts {
    'Client/*.lua'
}

shared_scripts {
  '@ox_lib/init.lua',
  'config.lua'
}

escrow_ignore {
	"Config.lua"
}

dependencies {
  'es_extended',
  'ox_lib'
}
