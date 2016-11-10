$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bulletin_board/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bulletin_board"
  s.version     = BulletinBoard::VERSION
  s.authors     = ["dirtyhero"]
  s.email       = ["takahashi@temona.co.jp"]
  s.homepage    = "https://github.com/dirtyhero"
  s.summary     = "Summary of BulletinBoard."
  s.description = "Description of BulletinBoard."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
