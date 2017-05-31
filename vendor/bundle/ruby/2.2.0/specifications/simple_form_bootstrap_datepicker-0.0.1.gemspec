# -*- encoding: utf-8 -*-
# stub: simple_form_bootstrap_datepicker 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "simple_form_bootstrap_datepicker"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["arianamador"]
  s.date = "2015-05-05"
  s.description = "Adds a bootstrap date picker simple form input with wrapper. Creates an input group with a calendar icon with support for Bootstrap, FontAwesome, and Foundation glyph libraries."
  s.email = ["arian@arianamador.com"]
  s.homepage = "https://github.com/arian-amador/simple_form_bootstrap_datepicker"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Adds a bootstrap date picker simple form input with wrapper."

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
  end
end
