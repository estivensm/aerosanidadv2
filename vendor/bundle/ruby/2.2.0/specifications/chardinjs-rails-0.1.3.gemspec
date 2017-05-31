# -*- encoding: utf-8 -*-
# stub: chardinjs-rails 0.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "chardinjs-rails"
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Pablo Fernandez"]
  s.date = "2014-01-30"
  s.description = "Simple overlay instructions for your apps."
  s.email = ["heelhook@littleq.net"]
  s.homepage = "https://github.com/heelhook/chardinjs-rails"
  s.rubygems_version = "2.4.8"
  s.summary = "Integrate the excellent Chardin.js javascript library with Rails asset pipeline"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, ["~> 0.14"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 3.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<rails>, ["~> 3.0"])
      s.add_development_dependency(%q<httpclient>, ["~> 2.2"])
    else
      s.add_dependency(%q<thor>, ["~> 0.14"])
      s.add_dependency(%q<sass-rails>, [">= 3.2"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<rails>, ["~> 3.0"])
      s.add_dependency(%q<httpclient>, ["~> 2.2"])
    end
  else
    s.add_dependency(%q<thor>, ["~> 0.14"])
    s.add_dependency(%q<sass-rails>, [">= 3.2"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<rails>, ["~> 3.0"])
    s.add_dependency(%q<httpclient>, ["~> 2.2"])
  end
end
