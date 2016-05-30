# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/git/delete_repo/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-git-delete_repo"
  spec.version       = Capistrano::Git::DeleteRepo::VERSION
  spec.authors       = ["William Johnston"]
  spec.email         = ["william@johnstonhaus.us"]

  spec.summary       = 'Sometimes you need to change the repo_url in Git. Run this to clean up after it.'
  # spec.description   = ''
  spec.homepage      = 'https://github.com/will-in-wi/capistrano-git-delete_repo'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  # spec.add_development_dependency 'rspec', '~> 3.0'
end
