# Class: ntp
# ===========================
#
# Authors
# -------
#
# Author Name <Hamza Yahaya>
#
# Copyright
# ---------
#
# Copyright 2016 Your name here, unless otherwise noted.
#
# Class: ntp
#
#
class ntp (

	$servers = $ntp::params::servers

	) inherits ntp::params {
	# resources
	contain 'ntp::install', 'ntp::config'
}
