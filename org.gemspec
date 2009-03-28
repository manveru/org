# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{org}
  s.version = "2009.03.28"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael 'manveru' Fellinger"]
  s.date = %q{2009-03-28}
  s.description = %q{transformation of a subset of org-mode markup to html.}
  s.email = %q{m.fellinger@gmail.com}
  s.files = ["CHANGELOG", "MANIFEST", "README.md", "Rakefile", "doc/syntax.org", "lib/org.rb", "lib/org/markup.rb", "lib/org/rule.rb", "lib/org/rules.rb", "lib/org/scope.rb", "lib/org/scope/org_mode.rb", "lib/org/state.rb", "lib/org/stringscanner.rb", "lib/org/to/html.rb", "lib/org/to/toc.rb", "lib/org/token.rb", "lib/org/version.rb", "org.gemspec", "spec/org.rb", "tasks/bacon.rake", "tasks/changelog.rake", "tasks/gem.rake", "tasks/gem_installer.rake", "tasks/grancher.rake", "tasks/install_dependencies.rake", "tasks/manifest.rake", "tasks/rcov.rake", "tasks/release.rake", "tasks/reversion.rake"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/manveru/org}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{transformation of a subset of org-mode markup to html.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
