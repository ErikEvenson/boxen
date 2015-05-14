class people::erikevenson {
  notify { 'class people::erikevenson declared': }

  include chrome
  
  package { 'alfred':
    provider => 'brewcask'
  }

  # Set up git
  exec { 'git user name':
    command => 'git config --global user.name "Erik Evenson"',
  }

  exec { 'git user email':
    command => 'git config --global user.email "erik.e.evenson@gmail.com"',
  }

  exec { 'git push default':
    command => 'git config --global push.default simple',
  }
}