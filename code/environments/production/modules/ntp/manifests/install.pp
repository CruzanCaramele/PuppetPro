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
		'Windows': {
			# code
			file { 'c:\\ntp-4.2.8p7-win32-setup.exe':
				ensure => file,
				source => 'puppet:///modules/ntp/meinberg-ntp.4.2.8.nupkg',
			}

			package { 'meinberg-ntp':
				ensure   => latest,
				provider => chocolatey,
				source   => "c:\\meinberg-ntp.4.2.8.nupkg",
				require  => File['c:\\meinberg-ntp.4.2.8.nupkg'],
			}
		}

		default: {
			# code
			fail("Sorry, ${::kernel} is unspported by this ntp module")
		}
	}
}