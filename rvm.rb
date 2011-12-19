#system install of rvm using a gist script
dep 'rvm system' do
  met? { File.exist?("/usr/local/rvm") }
  meet { sudo('bash -c "`wget -O - https://gist.github.com/raw/2d253db7c2564f3d6388/ebb283b618f569172488cd760e5c2da5b4b918ba/rvm-installer.sh`"')}
end