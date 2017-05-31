# -*- encoding: utf-8 -*-
# stub: garlicjs-rails 1.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "garlicjs-rails"
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Vasiliy Ermolovich"]
  s.date = "2013-07-16"
  s.description = "Garlic.js allows you to automatically persist your forms' text field values locally, until the form is submitted"
  s.email = ["younash@gmail.com"]
  s.homepage = "http://github.com/nashby/garlicjs-rails"
  s.rubygems_version = "2.4.8"
  s.summary = "Garlic.js allows you to automatically persist your forms' text field values locally, until the form is submitted"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
    else
      s.add_dependency(%q<railties>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1"])
  end
end
