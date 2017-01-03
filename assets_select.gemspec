# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'assets_select/version'

Gem::Specification.new do |spec|
  spec.name          = "assets_select"
  spec.version       = AssetsSelect::VERSION
  spec.authors       = ["oliver"]
  spec.email         = ["oliver.hv@coditramuntana.com"]

  spec.summary       = %q{This gem selects files to be added to Asset precompilation}
  spec.description   = %q{This gem selects files to be added to Asset precompilation. Useful when copiling assets directly in the production environment.}
  spec.homepage      = 'https://github.com/tramuntanal/assets_selector'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
