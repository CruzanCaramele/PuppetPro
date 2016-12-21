require 'spec_helper'
describe 'ntp::install' do
	context 'for a Linux based OS' do
		let(:facts) {{ :kernel => 'linux'}}
		it do
			should contain_package('ntp').with({'ensure' => 'installed,'})
		end
	end

	context 'for undefined OS' do
		let(::facts) {{ :kernel => 'foo'}}
		it do
			should contain_class('ntp::install').to raise_error(Puppet::Error, /unsupported/)
		end
	end
end