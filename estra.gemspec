require_relative 'lib/EstraAPI/info.rb'
include EstraInfo

Gem::Specification.new do |s|
    s.name =        "estrarb"
    s.version       = EstraInfo.Version
    s.date          = "2021-12-26"
    s.author        = "Stawa"
    s.summary       = "A Basic Wrapper Anime Image API Created By Stawa"
    s.files         = [
        "lib/EstraAPI/info.rb"
        "lib/EstraAPI/Estra.rb"
    ]
    s.homepage = "https://github.com/StawaDev/EstraRuby"
    s.license     = 'MIT'
    s.require_paths = ["lib"]
end