
Gem::Specification.new do |spec|
  spec.name          = "embulk-formatter-nested-jsonl"
  spec.version       = "0.1.0"
  spec.authors       = ["Norihiro Shimoda"]
  spec.summary       = "Nested Jsonl formatter plugin for Embulk"
  spec.description   = "Formats Nested Jsonl files for other file output plugins."
  spec.email         = ["norihiro.shimoda@brainpad.co.jp"]
  spec.licenses      = ["MIT"]
  # TODO set this: spec.homepage      = "https://github.com/norihiro.shimoda/embulk-formatter-nested-jsonl"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  #spec.add_dependency 'YOUR_GEM_DEPENDENCY', ['~> YOUR_GEM_DEPENDENCY_VERSION']
  spec.add_development_dependency 'bundler', ['~> 1.0']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
