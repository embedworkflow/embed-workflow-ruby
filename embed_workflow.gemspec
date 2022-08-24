# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "embed_workflow/version"

Gem::Specification.new do |spec|
  spec.name        = "embed_workflow"
  spec.version     = EmbedWorkflow::VERSION
  spec.authors     = ["Embed Workflow"]
  spec.email       = ["support@embedworkflow.com"]
  spec.description = "API client for Embed Workflow"
  spec.summary     = "API client for Embed Workflow"
  spec.homepage    = "https://github.com/embedworkflow/embed-workflow-ruby"
  spec.license     = "MIT"
  spec.metadata    = {
    "documentation_uri" => "https://api-docs.embedworkflow.com"
  }

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.files         = Dir["{config,lib}/**/*", "Rakefile"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.0.1"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "standard"

  spec.required_ruby_version = ">= 2.5"
end
