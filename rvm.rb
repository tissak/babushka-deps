dep 'rvm user' do
  met? { which 'rvm' }
  meet { shell('bash -c "`wget -O - https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer`"')}
  after { shell("echo '[[ -s \"$HOME/.rvm/scripts/rvm\" ]] && . \"$HOME/.rvm/scripts/rvm\" # Load RVM function' >> ~/.bash_profile") }
end

dep 'rvm system' do
  met? { which 'rvm' }
  meet {
    sudo('wget -O /tmp/rvm-installer https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer"')
    sudo('bash /tmp/rvm-installer"')
  }
  after { shell("echo '[[ -s \"/usr/local/rvm/scripts/rvm\" ]] && . \"/usr/local/rvm/scripts/rvm\" # Load RVM function' >> ~/.bash_profile") }
end
