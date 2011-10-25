$:.unshift 'lib'
require 'user-agent'
require 'rubygems'
require 'rake'

Dir['tasks/**/*.rake'].sort.each { |f| load f }

task :default => :spec
