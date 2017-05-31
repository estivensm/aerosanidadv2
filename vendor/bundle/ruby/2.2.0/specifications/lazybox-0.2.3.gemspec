# -*- encoding: utf-8 -*-
# stub: lazybox 0.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "lazybox"
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alex Galushka"]
  s.date = "2012-10-09"
  s.description = "Lazybox is a jQuery-based, lightbox that can display entire remote pages, images and confirmation dialogs. Replace standard rails confirmations with lazybox just added several rows to your project. Use lazybox with rails assets pipeline."
  s.email = ["sexmcs@gmail.com"]
  s.homepage = "https://github.com/galulex/lazybox"
  s.rubygems_version = "2.4.8"
  s.summary = "Use LazyBox for popup windows with Rails"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rails>, ["~> 3.1"])
      s.add_development_dependency(%q<jquery-rails>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.1"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.1"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
  end
end
