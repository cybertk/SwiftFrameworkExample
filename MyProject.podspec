Pod::Spec.new do |s|
  s.name             = "MyProject"
  s.version          = "0.1.0"
  s.summary          = "A short description"
  s.description      = <<-DESC
                       a longer description
                       DESC

  s.homepage         = "https://github.com/cybertk/MyProject"
  s.license          = "MIT"
  s.author           = "MyProject Contributors"
  s.source           = { :git => "https://github.com/cybertk/generator-swift-framework-example.git", :tag => "v#{s.version}" }

  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.source_files = "MyProject/**/*.{swift,h,m,mm}"
end
