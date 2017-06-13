# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kf5_api/version'

Gem::Specification.new do |spec|
  spec.name          = "kf5_api"
  spec.version       = Kf5Api::VERSION
  spec.authors       = ["wangrui"]
  spec.email         = ["wangr0620@gmail.com"]

  spec.summary       = %q{逸创云客服RESTful API for ruby}
  spec.description   = %q{逸创云客服RESTful API for ruby，目前只实现了需要的接口}
  spec.homepage      = "https://github.com/wangrui438/kf5_api"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'httparty'
end
