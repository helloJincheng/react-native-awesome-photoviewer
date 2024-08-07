require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-awesome-photoview"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "12.4" }
  s.source       = { :git => "https://github.com/thecatshidog/react-native-awesome-photoview.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm}"
  
  s.dependency "YBImageBrowser"
  s.dependency "YBImageBrowser/Video"

  s.dependency "React-Core"
end



