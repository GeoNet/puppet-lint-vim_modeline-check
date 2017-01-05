Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-vim_modeline-check'
  spec.version     = '0.0.3'
  spec.homepage    = 'https://github.com/robertpearce/puppet-lint-vim_modeline-check'
  spec.license     = 'MIT'
  spec.author      = 'Robert Pearce'
  spec.email       = 'r.pearce@gns.cri.nz'
  spec.files       = Dir[
     'README.md',
     'LICENSE',
     'lib/**/*',
     'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'A puppet-lint plugin to check for a vim modeline ending on the file.'
  spec.description = <<-EOF
    A puppet-lint plugin to check that manifest files end with a vim modeline as the last line.
  EOF
 
  spec.add_dependency             'puppet-lint', '~> 2.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rake', '~> 10.0'

  if RUBY_VERSION > '1.8'
      # requires ruby 1.9+, on 1.8 we'll fall back to the old regex parsing
      spec.add_development_dependency 'rspec-json_expectations', '~> 1.4'
  end
end
