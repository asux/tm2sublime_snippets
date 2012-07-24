require "tm2sublime_snippets/version"
require 'thor'
require 'thor/actions'
require 'plist'

module Tm2sublimeSnippets
  class ConvertCommand < Thor
    include Thor::Actions

    def self.source_root
      File.expand_path("../..", __FILE__)
    end

    desc "convert SOURCE DESTINATION", "Convert TextMate snippets to Sublime Text 2 format"
    def convert(source, destination)
      raise "#{source} is not a directory" unless File.directory?(source)
      raise "#{destination} is not a directory" unless File.directory?(destination)
      self.destination_root = destination
      Dir.glob(File.join(source, "*.plist")).each do |file_name|
        plist = Plist.parse_xml(file_name)
        @content = plist['content']
        @name = plist['name']
        @scope = plist['scope']
        @tab_trigger = plist['tabTrigger']
        template "templates/template.sublime-snippet", "#{@tab_trigger}.sublime-snippet"
      end
    end

  end # class ConvertCommand
end # module Tm2sublimeSnippets
