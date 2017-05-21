Pod::Spec.new do |s|
  s.name         = "mySwiftExtension"
  s.version      = "0.0.1"
  s.summary      = "swift extensions"
  s.description  = <<-DESC
                      cocoa, UIKit, AVFoundation and other
                   DESC
  s.homepage     = "https://github.com/murawakimitsuhiro/mySwiftExtensions"
  s.license      = {:type => "MIT", :file => "LICENSE" }
  s.author       = { "murawaki" => "mitsuhiromurawaki@gmail.com" }
  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.source       = { :git => "https://github.com/murawakimitsuhiro/mySwiftExtensions.git", :tag => "v0.0.1" }
  s.source_files = "Source/**/*.swift"

  #s.resource_bundles = {
  #  'ProperMediaView' => ['Resources/*']
  #}

  #s.dependency "SDWebImage"
end
# use pod 'mySwiftExtension', :git => 'https://github.com/murawakimitsuhiro/mySwiftExtensions.git'