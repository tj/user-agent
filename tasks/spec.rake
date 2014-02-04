require 'rspec/core/rake_task'

desc 'Run all specifications'
RSpec::Core::RakeTask.new(:spec)
