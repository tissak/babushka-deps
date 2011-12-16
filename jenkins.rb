dep 'jenkins apt key' do
  met? { !(sudo("apt-key list").grep(//).nil?) }
  meet? { sudo("wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -")}
end

dep 'jenkins apt source' do
  met? { shell("cat /etc/apt/sources.list.d/jenkins.list").grep(/jenkins-ci/) }
  meet? { sudo("echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list && aptitude update")}
end