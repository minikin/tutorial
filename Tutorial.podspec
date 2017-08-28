Pod::Spec.new do |s|
  s.name         = "Tutorial"
  s.version      = "0.1"
  s.summary      = "Summary  will be added"
  s.description  = "Description will be added"
  s.homepage     = "https://github.com/minikin/tutorial"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author             = { "Sasha Prokhorenko" => "djminikin@gmail.com" }
  s.social_media_url   = "https://twitter.com/minikin"
  s.ios.deployment_target = "10.0"
  s.source       = { :git => "https://github.com/minikin/tutorial.git", :tag => s.version.to_s }
  s.source_files  = "Tutorial/*"
  s.frameworks  = "Foundation"
end
