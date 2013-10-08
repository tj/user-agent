# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "modern-user-agent"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = [ "TJ Holowaychuk", "Alex Reed" ]
  s.date = "2013-10-08"
  s.description = "User Agent parser. Fixed version of the gem 'UserAgent', works on new versions of Windows and Internet Explorer."
  s.email = "tj@vision-media.ca"
  s.extra_rdoc_files = [ "README.rdoc", "lib/modern-user-agent.rb", "lib/modern-user-agent/agent.rb", "lib/modern-user-agent/version.rb", "tasks/docs.rake", "tasks/gemspec.rake", "tasks/spec.rake" ]
  s.files = [ "History.rdoc", "Manifest", "README.rdoc", "Rakefile", "lib/modern-user-agent.rb", "lib/modern-user-agent/agent.rb", "lib/modern-user-agent/version.rb", "spec/agent_spec.rb", "spec/agents_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/docs.rake", "tasks/gemspec.rake", "tasks/spec.rake", "modern-user-agent.gemspec" ]
  s.homepage = ""
  s.rdoc_options = [ "--line-numbers", "--inline-source", "--title", "User-agent", "--main", "README.rdoc" ]
  s.require_paths = [ "lib" ]
  s.rubyforge_project = "user-agent"
  s.rubygems_version = "1.3.5"
  s.summary = "User agent parser"
end
