Pod::Spec.new do |s|
  s.name         = "iosMath"
  s.version      = "0.11.1"
  s.summary      = "Math equation rendering for iOS and OS X"
  s.description  = "iosMath fork"
  s.homepage     = "https://github.com/hahtml/iosMath.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Kostub Deshmukh" => "kostub@gmail.com" }
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.source       = {
    :git => "https://github.com/hahtml/iosMath.git",
    :tag => s.version.to_s,
    :branch => "master"
  }
  s.source_files = 'iosMath/**/*.{h,m}'
  s.private_header_files = 'iosMath/render/internal/*.h'
  s.resource_bundles = {
     'mathFonts' => [ 'fonts/*.otf', 'fonts/*.plist' ]
  }
  s.frameworks = "CoreGraphics", "QuartzCore", "CoreText"
  s.ios.frameworks = "UIKit"
  s.osx.frameworks = "AppKit"
  s.requires_arc = true
end
