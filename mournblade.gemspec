# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mournblade/version'

Gem::Specification.new do |spec|
  spec.name          = 'mournblade'
  spec.version       = Mournblade::VERSION
  spec.authors       = ['Yasutomo Uemori']
  spec.email         = ['moonoverwalker@gmail.com']

  spec.summary       = 'A Vim-like text editor.'
  spec.description   = 'Mournblade is a member of dark powered gem that takes on the form of a Vim-like editor.'
  spec.homepage      = 'https://github.com/yuemori/mournblade'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'guard-minitest'
  spec.add_development_dependency 'pry-byebug'
end
