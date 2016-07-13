class win_vagrant_orchestrate {
  package { 'vagrant':
	  	ensure   => 'latest',
	  	provider => 'chocolatey',
	}->
	file{'C:/HashiCorp/Vagrant/embedded/bin/libcurl.dll':
		ensure => present,
		mode => '0777',
		source => 'puppet:///modules/win_vagrant_orchestrate/libcurl.dll'
		}
  package{'mls-software-openssh':
	ensure => 'latest',
	provider => 'chocolatey'
	}
	package{'rsync':
	ensure => 'latest',
	provider => 'chocolatey'
	}
  package{'gow':
	ensure => 'latest',
	provider => 'chocolatey'
	}
}
