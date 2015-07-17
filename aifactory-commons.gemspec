# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aifactory/commons/version'

Gem::Specification.new do |spec|
  spec.name          = "aifactory-commons"
  spec.version       = Aifactory::Commons::VERSION
  spec.authors       = ["PeoneEr"]
  spec.email         = ["peoneerko@yandex.ru"]

  spec.summary       = %q{Ai-factory.com commons gem}
  spec.description   = %q{Ai-factory.com commons gem}
  spec.homepage      = "http://ai-factory.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'hirb'
  spec.add_runtime_dependency 'annotate'
  spec.add_runtime_dependency 'configliere'
end
