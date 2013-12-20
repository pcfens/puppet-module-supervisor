class supervisor::update {
  exec { 'supervisor::update':
    command     => '/usr/bin/supervisorctl reread && /usr/bin/supervisorctl update && /usr/bin/supervisorctl reload',
    logoutput   => on_failure,
    refreshonly => true,
    require     => Service[$supervisor::params::system_service],
  }
}
