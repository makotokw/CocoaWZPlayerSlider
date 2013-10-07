Pod::Spec.new do |s|
  s.name     = "WZPlayerSlider"
  s.version  = "0.1.2"
  s.summary  = "UISlider for the player."
  s.homepage = "https://github.com/makotokw/CocoaWZPlayerSlider.git"
  s.license  = { :type => 'MIT License', :file => 'LICENSE' }
  s.author   = { "Makoto Kawasaki" => "makoto.kw@gmail.com" }
  s.source   = { :git => "https://github.com/makotokw/CocoaWZPlayerSlider.git", :tag => '0.1.2' }
  s.platform = :ios, '5.0'

  s.requires_arc  = true
  s.source_files  = 'WZPlayerSlider/*.{h,m}'
  s.resources     = 'WZPlayerSlider/WZPlayerSliderResources.bundle'
end
