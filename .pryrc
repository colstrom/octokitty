require 'octokit'

github = Octokit::Client.new auto_paginate: true, access_token: ENV.fetch('GITHUB_ACCESS_TOKEN')
required, optional = github.method(:create_status).parameters.partition { |p,_| p == :req }.map { |l| l.flat_map { |p| p.last } }
options = ['--context', 'test-case', '--description', 'something']
