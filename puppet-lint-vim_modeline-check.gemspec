Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-vim_modeline-check'
  spec.version     = '0.1.1'
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

  spec.add_dependency             'puppet-lint'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'rspec-collection_matchers'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'json'
  spec.add_development_dependency 'rspec-json_expectations'
end
