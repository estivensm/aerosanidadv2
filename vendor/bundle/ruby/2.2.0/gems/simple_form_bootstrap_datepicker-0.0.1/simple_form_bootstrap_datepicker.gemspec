# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "simple_form_bootstrap_datepicker/version"

Gem::Specification.new do |spec|
  spec.name          = "simple_form_bootstrap_datepicker"
  spec.version       = SimpleFormBootstrapDatepicker::VERSION
  spec.authors       = ["arianamador"]
  spec.email         = ["arian@arianamador.com"]
  spec.summary       = "Adds a bootstrap date picker simple form input with wrapper."
  spec.description   = "Adds a bootstrap date picker simple form input with wrapper. Creates an input group with a calendar icon with support for Bootstrap, FontAwesome, and Foundation glyph libraries."
  spec.homepage      = "https://github.com/arian-amador/simple_form_bootstrap_datepicker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
