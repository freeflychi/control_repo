node default {
  file {'/root/README':
    ensure  => file,
    content => 'Test readme\n',
    owner   => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
}

node /^web/ {
  inclide role::app_server
}

node /^db/ {
  inclide role::db_server
}
