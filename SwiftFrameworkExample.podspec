Pod::Spec.new do |s|
  s.name             = "SwiftFrameworkExample"
  s.version          = "0.1.0"
  s.summary          = "A short description"
  s.description      = <<-DESC
                       a longer description
                       DESC

  s.homepage         = "https://github.com/cybertk/SwiftFrameworkExample"
  s.license          = "MIT"
  s.author           = "SwiftFrameworkExample Contributors"
  s.source           = { :git => "https://github.com/cybertk/SwiftFrameworkExample.git", :tag => "v#{s.version}" }

  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.source_files = "SwiftFrameworkExample/**/*.{swift,h,m,mm}"
end
