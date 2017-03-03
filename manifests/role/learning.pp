class bootstrap::role::learning {
  include localrepo
  #include dockeragent
  include userprefs::profile
  include bootstrap
  include bootstrap::profile::rubygems
  include bootstrap::profile::network
  include bootstrap::profile::pe_tweaks
  include bootstrap::profile::stickler
  include bootstrap::profile::abalone
  include bootstrap::profile::puppet_forge_server
  include bootstrap::profile::learning::quest_guide
  include bootstrap::profile::learning::pe_tuning
  include bootstrap::profile::learning::install
  include bootstrap::profile::learning::quest_guide_server
  include bootstrap::profile::learning::ssh
  include bootstrap::profile::learning::quest_tool
  include bootstrap::profile::learning::multi_node
  include bootstrap::profile::learning::graphite_reqs
  include bootstrap::profile::learning::graphite_server
  include bootstrap::profile::learning::pypi_server
  include bootstrap::profile::learning::local_modules
  #class { 'docker':
  #  repo_opt => '--setopt=docker.skip_if_unavailable=true'
  #}
  class { 'userprefs::bash':
    password => '$1$hgIZHl1r$tEqMTzoXz.NBwtW3kFv33/',
    replace  => true,
  }
  class {'userprefs::vim':
    line_number => 'false',
    require     => Class['userprefs::profile'],
  }
  class {'bootstrap::profile::splash':
    # Note: the $IP_ADDRESS string is a variable determined at boot time by rc.local
    login_message => file('bootstrap/learning_message')
  }
}
