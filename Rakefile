require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'time'
require 'date'

PROJECT_SPECS = Dir['spec/**/*.rb']
PROJECT_MODULE = 'Org'

GEMSPEC = Gem::Specification.new{|s|
  s.name         = 'org'
  s.author       = "Michael 'manveru' Fellinger"
  s.summary      = "transformation of a subset of org-mode markup to html."
  s.description  = "transformation of a subset of org-mode markup to html."
  s.email        = 'm.fellinger@gmail.com'
  s.homepage     = 'http://github.com/manveru/org'
  s.platform     = Gem::Platform::RUBY
  s.version      = (ENV['PROJECT_VERSION'] || Date.today.strftime("%Y.%m.%d"))
  s.files        = `git ls-files`.split("\n").sort
  s.has_rdoc     = true
  s.require_path = 'lib'
}

Dir['tasks/*.rake'].each{|f| import(f) }

task :default => [:bacon]

CLEAN.include('')
