dep 'jenkins.managed' do
  requires 'jenkins apt key', 'jenkins apt source'
  installs { via :apt, 'jenkins'}
  provides []
end