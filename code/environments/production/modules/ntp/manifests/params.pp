# Class for ntp parameters

# Class: ntp::params
#
#
class ntp::params {
	# resources
	$servers = [
	'0.centos.pool.ntp.org',
	'1.centos.pool.ntp.org',
	'2.centos.pool.ntp.org',
	'3.centos.pool.ntp.org',]

	case $::operatingsystem: {
		'CentOS': {
			# code
			$ntp_service = 'ntpd'
		}
		default: {
			# code
			$ntp_service = 'ntp'
		}
	}
}