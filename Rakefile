require 'rake/clean'
require 'time'
require 'date'

ORG_VERSION = Date.today.strftime("%Y.%m.%d")

task :default => [:spec]
task :publish => [:ydoc]

CLEAN.include('*coverage*')

desc 'update lib/org/version.rb'
task :reversion do
  File.open('lib/org/version.rb', 'w+') do |file|
    file.puts('module Org')
    file.puts('  VERSION = %p' % ORG_VERSION)
    file.puts('end')
  end
end

desc 'publish to github'
task :release => [:reversion, :gemspec] do
  sh('git add MANIFEST CHANGELOG org.gemspec lib/org/version.rb')
  puts "I added the relevant files, you can now run:", ''
  puts "git commit -m 'Version #{ORG_VERSION}'"
  puts "git tag -a -m '#{ORG_VERSION}' '#{ORG_VERSION}'"
  puts "git push"
  puts
end

desc 'update manifest'
task :manifest do
  File.open('MANIFEST', 'w+') do|manifest|
    manifest.puts(`git ls-files`)
  end
end

desc 'update changelog'
task :changelog do
  File.open('CHANGELOG', 'w+') do |changelog|
    `git log -z --abbrev-commit`.split("\0").each do |commit|
      next if commit =~ /^Merge: \d*/
      ref, author, time, _, title, _, message = commit.split("\n", 7)
      ref    = ref[/commit ([0-9a-f]+)/, 1]
      author = author[/Author: (.*)/, 1].strip
      time   = Time.parse(time[/Date: (.*)/, 1]).utc
      title.strip!

      changelog.puts "[#{ref} | #{time}] #{author}"
      changelog.puts '', "  * #{title}"
      changelog.puts '', message.rstrip if message
      changelog.puts
    end
  end
end

desc 'generate gemspec'
task :gemspec => [:manifest, :changelog] do
  manifest = File.read('MANIFEST').split("\n")
  files = manifest.map{|file| "    %p," % file }.join("\n")[0..-2]

gemspec = <<-GEMSPEC
Gem::Specification.new do |s|
  s.name = "org"
  s.version = #{ORG_VERSION.dump}

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
#{files}
  ]
end
GEMSPEC

  File.open('org.gemspec', 'w+'){|gs| gs.puts(gemspec) }
end
