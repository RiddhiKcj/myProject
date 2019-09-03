# -*- encoding: utf-8 -*-
# stub: character_set 1.4.0 ruby lib
# stub: ext/character_set/extconf.rb

Gem::Specification.new do |s|
  s.name = "character_set".freeze
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Janosch Mu\u0308ller".freeze]
  s.date = "2019-06-07"
  s.email = ["janosch84@gmail.com".freeze]
  s.extensions = ["ext/character_set/extconf.rb".freeze]
  s.files = ["ext/character_set/extconf.rb".freeze]
  s.homepage = "https://github.com/jaynetics/character_set".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Build, read, write and compare sets of Unicode codepoints.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<benchmark-ips>.freeze, ["~> 2.7"])
      s.add_development_dependency(%q<codecov>.freeze, ["~> 0.1"])
      s.add_development_dependency(%q<get_process_mem>.freeze, ["~> 0.2.3"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<range_compressor>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<regexp_parser>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<regexp_property_values>.freeze, ["~> 0.3.5"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.8"])
    else
      s.add_dependency(%q<benchmark-ips>.freeze, ["~> 2.7"])
      s.add_dependency(%q<codecov>.freeze, ["~> 0.1"])
      s.add_dependency(%q<get_process_mem>.freeze, ["~> 0.2.3"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<range_compressor>.freeze, ["~> 1.0"])
      s.add_dependency(%q<regexp_parser>.freeze, ["~> 1.3"])
      s.add_dependency(%q<regexp_property_values>.freeze, ["~> 0.3.5"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.8"])
    end
  else
    s.add_dependency(%q<benchmark-ips>.freeze, ["~> 2.7"])
    s.add_dependency(%q<codecov>.freeze, ["~> 0.1"])
    s.add_dependency(%q<get_process_mem>.freeze, ["~> 0.2.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<range_compressor>.freeze, ["~> 1.0"])
    s.add_dependency(%q<regexp_parser>.freeze, ["~> 1.3"])
    s.add_dependency(%q<regexp_property_values>.freeze, ["~> 0.3.5"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.8"])
  end
end
