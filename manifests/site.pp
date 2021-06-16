node default {
  }
node 'master.puppet.vm' {
  include role::master_server
}
file {'/root/README':
3
    ensure  => file,
4
    content => 'Test readme',
5
    owner   => 'root',
6
  }
