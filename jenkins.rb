dep 'jenkins apt key' do
  met? { !(sudo("apt-key list").grep(/Kawaguchi/).nil?) }
  meet { sudo("wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -")}
end

dep 'jenkins apt source' do
  met? { File.exist?("/etc/apt/sources.list.d/jenkins.list") }
  meet {
    sudo("echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list")
    sudo("aptitude update")
  }
end