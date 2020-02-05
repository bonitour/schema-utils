# frozen_string_literal: true

require_relative "lib/schema_utils/version"

Gem::Specification.new do |spec|
  spec.name          = "schema_utils"
  spec.version       = SchemaUtils::VERSION
  spec.authors       = ["Ricardo Pontes"]
  spec.email         = ["ricardo@bonitourtecnologia.com"]

  spec.summary       = "Run migration on schema"
  spec.description   = "Gem to set a schema to run migration."
  spec.homepage      = "https://github.com/bonitour/schema_utils"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)

  spec.add_dependency "activerecord"

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) {|f| File.basename(f) }
  spec.require_paths = ["lib"]
end
