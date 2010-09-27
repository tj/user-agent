# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cv-user-agent}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Carlos Villela"]
  s.date = %q{2010-09-27}
  s.description = %q{User agent parser}
  s.email = %q{cv@lixo.org}
  s.extra_rdoc_files = ["README.rdoc", "lib/user-agent.rb", "lib/user-agent/agent.rb", "lib/user-agent/version.rb", "tasks/docs.rake", "tasks/gemspec.rake", "tasks/spec.rake"]
  s.files = ["Gemfile", "History.rdoc", "Manifest", "README.rdoc", "Rakefile", "lib/user-agent.rb", "lib/user-agent/agent.rb", "lib/user-agent/version.rb", "spec/agent_spec.rb", "spec/agents_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/docs.rake", "tasks/gemspec.rake", "tasks/spec.rake", "user-agent.gemspec", "cv-user-agent.gemspec"]
  s.homepage = %q{}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Cv-user-agent", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{cv-user-agent}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{User agent parser}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
