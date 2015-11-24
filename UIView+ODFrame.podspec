Pod::Spec.new do |s|
  s.name         = "UIView+ODFrame"
  s.version      = "0.2.1"
  s.summary      = "Category for UIView extends the frame accessibility."
  s.homepage     = "https://github.com/Rogaven/UIView-Frame"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "Alexey Nazaroff" => "alexx.nazaroff@gmail.com" }
  s.source       = { :git => "https://github.com/Rogaven/UIView-Frame.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.source_files = 'src/**/*'
  s.requires_arc = true
end
