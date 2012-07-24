# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tm2sublime_snippets/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alex Ulianytskyi"]
  gem.email         = ["a.ulyanitsky@gmail.com"]
  gem.description   = %q{Script for converting Textmate snippets to Sublime Text 2}
  gem.summary       = %q{Script for converting Textmate snippets to Sublime Text 2}
  gem.homepage      = "https://github.com/asux/tm2sublime_snippets"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tm2sublime_snippets"
  gem.require_paths = ["lib"]
  gem.version       = Tm2sublimeSnippets::VERSION

  gem.add_dependency "thor", "> 0"
  gem.add_dependency "plist", "> 0"
end
