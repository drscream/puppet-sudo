class sudo {
	case $::operatingsystem {
		default: { include sudo::base }
	}

	sudo::directive {
		"sudo_users":
			ensure => present,
			content => '%sudo ALL=NOPASSWD: ALL',
	}
}
