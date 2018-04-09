spec = Gem::Specification.new do |s|
  s.name              = "{{ project.name }}"
  s.version           = "0.0.1"
  s.authors           = "{{ project.authors }}"
  s.email             = "{{ project.email }}"
  s.homepage          = "{{ project.homepage }}"
  s.summary           = "{{ project.summary }}"
  s.description       = "{{ project.description }}"
  s.platform          = Gem::Platform::RUBY
  s.has_rdoc          = true
  s.test_files        = Dir.glob "test/**/*_test.rb"
  s.files             = `git ls-files`.split("\n").reject {|f| f =~ /^\./}
  s.executables       = ["{{ project.exec }}"]
end