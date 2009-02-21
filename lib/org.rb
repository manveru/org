require 'strscan'
require 'pp'

$LOAD_PATH.unshift File.dirname(__FILE__)

module Org
  module_function

  def escape_html(string)
    string.to_s.gsub("&", "&amp;").
      gsub("<", "&lt;").
      gsub(">", "&gt;").
      gsub("'", "&#39;").
      gsub('"', "&quot;")
  end
end

require 'org/version'
require 'org/stringscanner'
require 'org/markup'
require 'org/state'
require 'org/scope'
require 'org/token'
require 'org/rule'

require 'org/scope/org_mode'
require 'org/to/html'
require 'org/to/toc'
