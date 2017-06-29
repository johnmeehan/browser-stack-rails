require 'rake'
require 'rspec'

RSpec::Core::RakeTask.new(:local) do |t|
  ENV['CONFIG_NAME'] ||= "local"
  ENV['TEST_DRIVER'] = "browserstack"
  # t.pattern = Dir.glob('spec/features/**_spec.rb')
  t.pattern = Dir.glob('spec/features/**/*_spec.rb')
  t.rspec_opts = '--format documentation'
  t.verbose = false
end
