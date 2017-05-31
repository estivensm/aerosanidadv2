# -*- encoding: utf-8 -*-
# stub: switchery-rails 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "switchery-rails"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Guillaume Hain"]
  s.date = "2015-01-18"
  s.description = "This gem provides Switchery driver for your Rails application"
  s.email = ["zedtux@zedroot.org"]
  s.homepage = "https://github.com/abpetkov/switchery"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Use Switchery for Rails"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["~> 4"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<railties>, ["~> 4"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<railties>, ["~> 4"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
