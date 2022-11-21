fx_version 'adamant'
game 'gta5'

name 'dv_RockstarEditor'

client_scripts {
    'Client/*.lua'
}

shared_scripts {
  '@ox_lib/init.lua',
  'config.lua'
}

dependencies {
  'es_extended',
  'ox_lib'
}
