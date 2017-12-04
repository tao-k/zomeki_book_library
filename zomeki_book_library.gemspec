$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "zomeki_book_library/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "zomeki_book_library"
  s.version     = ZomekiBookLibrary::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ZomekiBookLibrary."
  s.description = "TODO: Description of ZomekiBookLibrary."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.6"

  s.add_development_dependency "sqlite3"
end
