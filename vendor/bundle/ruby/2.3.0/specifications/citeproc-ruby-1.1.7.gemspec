# -*- encoding: utf-8 -*-
# stub: citeproc-ruby 1.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "citeproc-ruby"
  s.version = "1.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sylvester Keil"]
  s.date = "2017-07-02"
  s.description = "CiteProc-Ruby is a Citation Style Language (CSL) 1.0.1 compatible cite\nprocessor implementation written in pure Ruby.\n"
  s.email = ["http://sylvester.keil.or.at"]
  s.homepage = "https://github.com/inukshuk/citeproc-ruby"
  s.licenses = ["AGPL-3.0"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.5.1"
  s.summary = "A Citation Style Language (CSL) cite processor"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<citeproc>, ["< 2.0", ">= 1.0.4"])
      s.add_runtime_dependency(%q<csl>, ["~> 1.4"])
    else
      s.add_dependency(%q<citeproc>, ["< 2.0", ">= 1.0.4"])
      s.add_dependency(%q<csl>, ["~> 1.4"])
    end
  else
    s.add_dependency(%q<citeproc>, ["< 2.0", ">= 1.0.4"])
    s.add_dependency(%q<csl>, ["~> 1.4"])
  end
end
