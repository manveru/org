Gem::Specification.new do |s|
  s.name = "org"
  s.version = "2009.02.21"

  s.summary = "Powerful web-framework wrapper for Rack."
  s.description = "Simple, straight-forward, base for web-frameworks."
  s.platform = "ruby"
  s.has_rdoc = true
  s.author = "Michael 'manveru' Fellinger"
  s.email = "m.fellinger@gmail.com"
  s.homepage = "http://github.com/manveru/org"
  s.require_path = "lib"

  s.add_dependency('rack', '>= 0.4.0')

  s.files = [
    "README.md",
    "doc/syntax.org",
    "lib/org.rb",
    "lib/org/markup.rb",
    "lib/org/rule.rb",
    "lib/org/rules.rb",
    "lib/org/scope.rb",
    "lib/org/scope/org_mode.rb",
    "lib/org/state.rb",
    "lib/org/stringscanner.rb",
    "lib/org/to/html.rb",
    "lib/org/to/toc.rb",
    "lib/org/token.rb",
    "spec/org.rb"
  ]
end
