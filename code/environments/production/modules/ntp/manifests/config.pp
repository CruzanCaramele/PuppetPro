# Class for ntp configuration

# Class: ntp::config
#
#
class ntp::config inherits ntp {
	$servers     = $ntp::servers
	$ntp_service = $ntp::params::ntp_service
	# resources
	if ($::kernel == 'linux') {
		file { '/etc/ntp.conf':
			ensure  => file,
			mode    => '0644',
			owner   => 'root',
			group   => 'root',
			notify  => Service[$ntp_service],
			content => template('ntp/ntp.conf.erb'),
		}
	}

}