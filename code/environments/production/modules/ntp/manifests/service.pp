# ntp service class

# Class: ntp::service
#
#
class ntp::service {
	# resources
	service { 'ntp':
		enable      => true,
		ensure      => running,
		#hasrestart => true,
		#hasstatus  => true,
		#require    => Class["config"],
	}
}