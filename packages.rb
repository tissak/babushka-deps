dep 'jenkins.managed' do
  requires 'jenkins apt key', 'jenkins apt source', 'java.managed'
  installs { via :apt, 'jenkins'}
  provides []
end