# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "activerecord-mysql2-retry-ext/version"

Gem::Specification.new do |s|
  s.name        = "activerecord-mysql2-retry-ext"
  s.version     = Activerecord::Mysql2::Retry::Ext::VERSION
  s.authors     = ["Zach Dennis"]
  s.email       = ["zach.dennis@gmail.com"]
  s.homepage    = "https://github.com/zdennis/activerecord-mysql2-retry-ext"
  s.summary     = %q{Provides auto retrying of SQL queries for the Mysql2 adapter.}
  s.description = %q{
    Something with the combination of Rails 3.1, Mysql2 0.3.x, Capybara,
    Selenium/Webkit/etc causes Mysql to raise exceptions where the connection is
    waiting on a result. This gem provides an auto-retry capability with the
    Mysql2Adapter to retry any query execution up to 5 times. This is a a temporary
    solution until the real issue with the above libraries/frameworks are resolved. This
    should NOT be used in production. 
  }

  s.rubyforge_project = "activerecord-mysql2-retry-ext"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "activerecord", ">= 3.1.0"
  s.add_runtime_dependency "mysql2", "~> 0.3"
end
