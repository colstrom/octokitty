Gem::Specification.new do |gem|
  gem.name = 'octokitty'
  gem.version = '1.0.0'
  gem.licenses    = 'MIT'
  gem.authors     = ['Chris Olstrom']
  gem.email       = 'chris@olstrom.com'
  gem.homepage    = 'http://colstrom.github.io/octokitty/'
  gem.summary     = 'Like busybox for the GitHub API'
  gem.description = 'OctoKiTTY brings the GitHub API to your Terminal, in a manner inspired by busybox.'

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }

  gem.add_runtime_dependency 'octokit', '~> 4.2', '>= 4.2.0'
end
