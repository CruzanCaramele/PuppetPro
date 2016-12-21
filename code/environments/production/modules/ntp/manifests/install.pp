# Class: ntp::install
# Install class manages installation of the ntp package
#
class ntp::install {
	# resources

	case $::kernel {
		'Linux': {
			# resource
			package { 'ntp':
				ensure => installed,
			}
		}
		default: {
			# code
			fail("Sorry, ${::kernel} is unspported by this ntp module")
		}
	}
}