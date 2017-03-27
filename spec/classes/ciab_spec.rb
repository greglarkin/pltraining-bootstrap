require 'spec_helper'

describe "bootstrap::role::ciab" do
  let(:node) { 'test.example.com' }

  let(:facts) { {
    :osfamily                  => 'RedHat',
    :operatingsystem           => 'RedHat',
    :operatingsystemrelease    => '7.3.1611',
    :operatingsystemmajrelease => '7',
    :os_maj_release            => '7',
    :architecture              => 'x86_64',
    :puppetversion             => '4.9.4',
    :kernel                    => 'Linux',
    :kernelversion             => '3.10.0',
    :offline                   => false,
    :num_win_vms               => '0',
    :networking                => { 'ip' => '127.0.0.1' },
    :ipaddress                 => '127.0.0.1',
  } }

  it { is_expected.to compile.with_all_deps }

end
