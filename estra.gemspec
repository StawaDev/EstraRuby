require_relative 'lib/estrarb/info.rb'
include EstraInfo

Gem::Specification.new do |s|
    s.name =        "estrarb"
    s.version       = "0.1.2"
    s.date          = "2021-12-26"
    s.author        = "Stawa"
    s.summary       = "A Basic Wrapper Anime Image API Created By Stawa"
    s.files         = Dir['lib/**/*.rb']
    s.homepage = "https://github.com/StawaDev/EstraRuby"
    s.license     = 'MIT'
    s.require_paths = ["lib"]
end