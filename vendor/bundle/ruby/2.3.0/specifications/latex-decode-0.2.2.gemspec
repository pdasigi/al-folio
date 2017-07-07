# -*- encoding: utf-8 -*-
# stub: latex-decode 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "latex-decode"
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sylvester Keil"]
  s.date = "2015-04-03"
  s.description = "Decodes strings formatted in LaTeX to equivalent Unicode strings."
  s.email = ["http://sylvester.keil.or.at"]
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["LICENSE", "README.md"]
  s.homepage = "http://github.com/inukshuk/latex-decode"
  s.licenses = ["GPL-3"]
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "\"LaTeX-Decode Documentation\"", "--main", "README.md", "--webcvs=http://github.com/inukshuk/latex-decode/tree/master/"]
  s.rubygems_version = "2.5.1"
  s.summary = "Decodes LaTeX to Unicode."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<unicode>, ["~> 0.4"])
    else
      s.add_dependency(%q<unicode>, ["~> 0.4"])
    end
  else
    s.add_dependency(%q<unicode>, ["~> 0.4"])
  end
end
