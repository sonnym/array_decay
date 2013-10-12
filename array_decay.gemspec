# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'array_decay/version'

Gem::Specification.new do |spec|
  spec.name          = 'array_decay'
  spec.version       = ArrayDecay::VERSION
  spec.authors       = ['sonnym']
  spec.email         = ['michaud.sonny@gmail.com']
  spec.description   = 'Discard array elements during enumeration to free memory.'
  spec.summary       = spec.description
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
