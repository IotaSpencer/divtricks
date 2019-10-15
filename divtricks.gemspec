lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'divtricks/version'

Gem::Specification.new do |spec|
  spec.name = 'divtricks'
  spec.version = DivTricks::VERSION
  spec.authors = ['Ken Spencer']
  spec.email = 'me@iotaspencer.me'
  spec.summary = %q{String/Integer shortcuts to do divisibility tricks on them}
  spec.homepage = 'https://iotaspencer.me/projects/divtricks'
  spec.license = 'MIT'
  if spec.respond_to?(:metadata)
    spec.metadata = {
      'github_repo' => 'https://github.com/IotaSpencer/divtricks',
      'bug_tracker_uri' => 'https://github.com/IotaSpencer/divtricks/issues',
      'documentation_uri' => 'https://rubydoc.info/gems/divtricks',
      'homepage_uri' => 'https://iotaspencer.me/projects/divtricks',
      'source_code_uri' => 'https://github.com/IotaSpencer/divtricks',
      'wiki_uri' => 'https://github.com/IotaSpencer/divtricks/wiki'
    }
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
    'public gem pushes'
  end
  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test)/})
  end
  spec.required_ruby_version = '>= 2'
  spec.bindir = 'bin'
  spec.executables << 'test-divtricks'
  spec.require_paths = ['lib']
  spec.add_runtime_dependency 'super_callbacks', '>= 1.3.1'
  spec.add_development_dependency 'bundler', '>= 1.16'
  spec.add_development_dependency 'rake', '>= 10'¸ '< 13'
end
