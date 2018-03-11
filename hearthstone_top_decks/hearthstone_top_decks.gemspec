
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hearthstone_top_decks/config/environment.rb"

Gem::Specification.new do |spec|
  spec.name          = "hearthstone_top_decks"
  spec.version       = HearthstoneTopDecks::VERSION
  spec.authors       = ["alcesalces11331"]
  spec.email         = ["rollin.metzger@gmail.com"]

  spec.summary       = "Popular Hearthstone Decks"
  spec.description   = "Scrape www.hearthstonetopdecks.com and display information."
  spec.homepage      = "https://github.com/alcesalces11331/Rollin_Metzger-cli-app/tree/master/hearthstone_top_decks"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "nokogiri"
end
end
