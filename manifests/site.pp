node default {
  file {'/root/README':
    ensure  => file,
    content => 'Test readme\n',
    owner   => 'root',
  }
}

