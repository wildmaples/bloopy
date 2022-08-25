# frozen_string_literal: true


Gem::Specification.new do |spec|
  spec.name = "bloopy"
  spec.version = File.read("VERSION").strip
  spec.authors = ["Maple Ong"]
  spec.email = ["maple.develops@gmail.com"]

  spec.summary = "A simple library for making bloop sounds"
  spec.description = "A simple library for making bloop sounds"
  spec.license = "MIT"
  spec.required_ruby_version = "3.1.1"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
