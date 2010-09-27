
$:.unshift 'lib'
require 'user-agent'
require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new "cv-user-agent", Agent::VERSION do |p|
  p.author = "Carlos Villela"
  p.email = "cv@lixo.org"
  p.summary = "User agent parser"
  p.runtime_dependencies = []
end

Dir['tasks/**/*.rake'].sort.each { |f| load f }