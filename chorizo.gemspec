# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chorizo/version'

Gem::Specification.new do |spec|
  spec.name    = 'chorizo'
  spec.version = CHorizo::VERSION
  spec.authors = ['Kimberley Scott']
  spec.email   = ['kimberley.r.scott@mac.com']

  spec.summary     = %q{Common Horizontal data}
  spec.description = %q{Provides a common mechanism to handle data that needs to be atomic and be available across applications}
  spec.homepage    = 'https://github.com/ZenGirl/chorizo'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = 'TODO: Set to \'http://mygemserver.com\''
  #
  #   spec.metadata['homepage_uri']    = spec.homepage
  #   spec.metadata['source_code_uri'] = 'TODO: Put your gem\'s public repo URL here.'
  #   spec.metadata['changelog_uri']   = 'TODO: Put your gem\'s CHANGELOG.md URL here.'
  # else
  #   raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/})}
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) {|f| File.basename(f)}
  spec.require_paths = ['lib']

  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.13'
  spec.add_development_dependency 'rubocop', '=0.71.0'
  spec.add_development_dependency 'simplecov', '=0.16.1'
end
