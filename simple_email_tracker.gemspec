$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_email_tracker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_email_tracker"
  s.version     = SimpleEmailTracker::VERSION
  s.authors     = ["linjunhalida"]
  s.email       = ["linjunhalida@gmail.com"]
  s.homepage    = "https://github.com/halida/simple_email_tracker"
  s.summary     = "Rails plugin for a Simple Email Tracker."
  s.description = "Track email opened by place a transparent image into email."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.6"
  s.add_dependency 'haml'
  s.add_dependency 'uuid'

  s.add_development_dependency "sqlite3"
end
