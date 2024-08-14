# frozen_string_literal: true

require_relative "lib/persona-ruby/version"

Gem::Specification.new do |spec|
  spec.name = "persona-ruby"
  spec.version = Persona::VERSION
  spec.authors = ["Ravi Trivedi", "Stephen Tredger"]
  spec.email = ["stephen.tredger@riipen.com"]

  spec.summary = "An API client for Persona in ruby."
  spec.description = "Access the Persona REST API."
  spec.homepage = "https://github.com/riipen/persona-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/riipen/persona-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/riipen/persona-ruby/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 2.0.1"

  spec.metadata["rubygems_mfa_required"] = "true"
end
