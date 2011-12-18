dep 'rvm user' do
  met? { which 'rvm' }
  meet { shell('bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )')}
  after { shell("echo '[[ -s \"$HOME/.rvm/scripts/rvm\" ]] && . \"$HOME/.rvm/scripts/rvm\" # Load RVM function' >> ~/.bash_profile") }
end

dep 'rvm system' do
  requires 'curl.managed'
  met? { which 'rvm' }
  meet { sudo('bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )')}
  after { shell("echo '[[ -s \"/usr/local/rvm/scripts/rvm\" ]] && . \"/usr/local/rvm/scripts/rvm\" # Load RVM function' >> ~/.bash_profile") }
end
