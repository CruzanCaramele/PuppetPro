# Class: helloworld ($server = 'Unknown')
#	
#
class helloworld ($server = 'Unknown') {
	# resources
	notify {'Say hello':
		message => "Hello from $(server)",
	}
}