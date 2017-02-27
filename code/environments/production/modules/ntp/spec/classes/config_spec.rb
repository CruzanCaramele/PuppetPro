require 'spec_helper'
describe 'ntp::config' do
	
	context 'for a Linux distribution' do
		let(:facts) {{ :kernel => 'linux'}}
		it do
			should contain_file ('/etc/ntp.conf').with({
				'ensure'  => 'file',
				'mode'    => '0644',
				'owner'   => 'root',
				'group'   => 'root',
				'content' => /server 0.centos.pool.ntp.org iburst/,
				})
		end
	end

end