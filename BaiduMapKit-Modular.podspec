Pod::Spec.new do |s|
  s.name         = 'BaiduMapKit-Modular'
  s.version      = '3.3.4'
  s.summary      = '百度地图iOS SDK Modular（CocoaPods百度地图官方库）, 支持Cocoaspods subspec'
  
  s.homepage     = 'http://developer.baidu.com/map/index.php?title=iossdk'
  s.license      = { :type =>'MIT', :file => 'LICENSE' }
  s.authors      = { 'ApterKing' => 'wangcccong@foxmail.com' }


  s.source       = { :git => 'https://github.com/ApterKing/BaiduMapKit-Modular.git', :tag => s.version.to_s, :submodules => true }

  s.requires_arc = true

  s.default_subspec = 'Base', 'Cloud', 'Location', 'Map', 'Radar', 'Search', 'Utils'
  
  s.subspec 'Base' do |ss|
    ss.ios.deployment_target = '8.0'

    ss.source_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Base.framework/Headers/**.h'
    ss.public_header_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Base.framework/Headers/**.h'
    
    ss.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
    ss.libraries    = 'sqlite3.0', 'stdc++.6.0.9'
  
    ss.vendored_frameworks =  'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Base.framework'
    ss.vendored_libraries = 'BaiduMapKit-Modular/Vendors/thirdlibs/*.a'
  end

  s.subspec 'Cloud' do |ss|
    ss.ios.deployment_target = '8.0'
    
    ss.dependency 'BaiduMapKit-Modular/Base'
    ss.ios.dependency 'BaiduMapKit-Modular/Base'

    ss.source_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Cloud.framework/Headers/**.h'
    ss.public_header_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Cloud.framework/Headers/**.h'
    
    ss.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
    ss.libraries    = 'sqlite3.0', 'stdc++.6.0.9'

    ss.vendored_frameworks =  'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Cloud.framework'
    ss.vendored_libraries = 'BaiduMapKit-Modular/Vendors/thirdlibs/*.a'
  end

  s.subspec 'Location' do |ss|
    ss.ios.deployment_target = '8.0'
    
    ss.dependency 'BaiduMapKit-Modular/Base'
    ss.ios.dependency 'BaiduMapKit-Modular/Base'

    ss.source_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Location.framework/Headers/**.h'
    ss.public_header_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Location.framework/Headers/**.h'
    
    ss.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
    ss.libraries    = 'sqlite3.0', 'stdc++.6.0.9'
  
    ss.vendored_frameworks =  'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Location.framework'
    ss.vendored_libraries = 'BaiduMapKit-Modular/Vendors/thirdlibs/*.a'
  end

  s.subspec 'Map' do |ss|
    ss.ios.deployment_target = '8.0'


    ss.dependency 'BaiduMapKit-Modular/Base'
    ss.ios.dependency 'BaiduMapKit-Modular/Base'
    
    ss.source_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Map.framework/Headers/**.h'
    ss.public_header_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Map.framework/Headers/**.h'
    ss.resources = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Map.framework/Resources/mapapi.bundle'
    
    ss.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
    ss.libraries    = 'sqlite3.0', 'stdc++.6.0.9'
  
    ss.vendored_frameworks =  'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Map.framework'
    ss.vendored_libraries = 'BaiduMapKit-Modular/Vendors/thirdlibs/*.a'
  end

  s.subspec 'Radar' do |ss|
    ss.ios.deployment_target = '8.0'

    ss.dependency 'BaiduMapKit-Modular/Base'
    ss.ios.dependency 'BaiduMapKit-Modular/Base'
    
    ss.source_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Radar.framework/Headers/**.h'
    ss.public_header_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Radar.framework/Headers/**.h'
    

    ss.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
    ss.libraries    = 'sqlite3.0', 'stdc++.6.0.9'
  
    ss.vendored_frameworks =  'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Radar.framework'
    ss.vendored_libraries = 'BaiduMapKit-Modular/Vendors/thirdlibs/*.a'
  end

  s.subspec 'Search' do |ss|
    ss.ios.deployment_target = '8.0'
    
    ss.dependency 'BaiduMapKit-Modular/Base'
    ss.ios.dependency 'BaiduMapKit-Modular/Base'

    ss.source_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Search.framework/Headers/**.h'
    ss.public_header_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Search.framework/Headers/**.h'

    ss.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
    ss.libraries    = 'sqlite3.0', 'stdc++.6.0.9'
    
    ss.vendored_frameworks =  'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Search.framework'
    ss.vendored_libraries = 'BaiduMapKit-Modular/Vendors/thirdlibs/*.a'
  end

  s.subspec 'Utils' do |ss|
    ss.ios.deployment_target = '8.0'

    ss.dependency 'BaiduMapKit-Modular/Base'
    ss.ios.dependency 'BaiduMapKit-Modular/Base'
    
    ss.source_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Utils.framework/Headers/**.h'
    ss.public_header_files = 'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Utils.framework/Headers/**.h'
    

    ss.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
    ss.libraries    = 'sqlite3.0', 'stdc++.6.0.9'
  
    ss.vendored_frameworks =  'BaiduMapKit-Modular/Vendors/BaiduMapAPI_Utils.framework'
    ss.vendored_libraries = 'BaiduMapKit-Modular/Vendors/thirdlibs/*.a'
  end

  s.prepare_command = <<-EOF
  
    # 创建Base Module
    rm -rf BaiduMapKit-Modular/Vendors/BaiduMapAPI_Base.framework/Modules
    mkdir BaiduMapKit-Modular/Vendors/BaiduMapAPI_Base.framework/Modules
    touch BaiduMapKit-Modular/Vendors/BaiduMapAPI_Base.framework/Modules/module.modulemap
    cat <<-EOF > BaiduMapKit-Modular/Vendors/BaiduMapAPI_Base.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Base {
      umbrella header "BMKBaseComponent.h"

      export *
      link "sqlite3.0"
      link "stdc++.6.0.9"
    }
    \EOF

    # 创建Cloud Module
    rm -rf BaiduMapKit-Modular/Vendors/BaiduMapAPI_Cloud.framework/Modules
    mkdir BaiduMapKit-Modular/Vendors/BaiduMapAPI_Cloud.framework/Modules
    touch BaiduMapKit-Modular/Vendors/BaiduMapAPI_Cloud.framework/Modules/module.modulemap
    cat <<-EOF > BaiduMapKit-Modular/Vendors/BaiduMapAPI_Cloud.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Cloud {
      umbrella header "BMKCloudSearchComponent.h"

      export *
      link "sqlite3.0"
      link "stdc++.6.0.9"
    }
    \EOF

    # 创建Location Module
    rm -rf BaiduMapKit-Modular/Vendors/BaiduMapAPI_Location.framework/Modules
    mkdir BaiduMapKit-Modular/Vendors/BaiduMapAPI_Location.framework/Modules
    touch BaiduMapKit-Modular/Vendors/BaiduMapAPI_Location.framework/Modules/module.modulemap
    cat <<-EOF > BaiduMapKit-Modular/Vendors/BaiduMapAPI_Location.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Location {
      umbrella header "BMKLocationComponent.h"

      export *
      link "sqlite3.0"
      link "stdc++.6.0.9"
    }
    \EOF

    # 创建Map Module
    rm -rf BaiduMapKit-Modular/Vendors/BaiduMapAPI_Map.framework/Modules
    mkdir BaiduMapKit-Modular/Vendors/BaiduMapAPI_Map.framework/Modules
    touch BaiduMapKit-Modular/Vendors/BaiduMapAPI_Map.framework/Modules/module.modulemap
    cat <<-EOF > BaiduMapKit-Modular/Vendors/BaiduMapAPI_Map.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Map {
      umbrella header "BMKMapComponent.h"
      
      export *
      link "sqlite3.0"
      link "stdc++.6.0.9"
    }
    \EOF

    # 创建Radar Module
    rm -rf BaiduMapKit-Modular/Vendors/BaiduMapAPI_Radar.framework/Modules
    mkdir BaiduMapKit-Modular/Vendors/BaiduMapAPI_Radar.framework/Modules
    touch BaiduMapKit-Modular/Vendors/BaiduMapAPI_Radar.framework/Modules/module.modulemap
    cat <<-EOF > BaiduMapKit-Modular/Vendors/BaiduMapAPI_Radar.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Radar {
      umbrella header "BMKRadarComponent.h"
      
      export *
      link "sqlite3.0"
      link "stdc++.6.0.9"
    }
    \EOF

    # 创建Search  Module
    rm -rf BaiduMapKit-Modular/Vendors/BaiduMapAPI_Search.framework/Modules
    mkdir BaiduMapKit-Modular/Vendors/BaiduMapAPI_Search.framework/Modules
    touch BaiduMapKit-Modular/Vendors/BaiduMapAPI_Search.framework/Modules/module.modulemap
    cat <<-EOF > BaiduMapKit-Modular/Vendors/BaiduMapAPI_Search.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Search {
      umbrella header "BMKSearchComponent.h"
      header "BMKSearchVersion.h"
      
      export *
      link "sqlite3.0"
      link "stdc++.6.0.9"
    }
    \EOF

    # 创建Utils  Module
    rm -rf BaiduMapKit-Modular/Vendors/BaiduMapAPI_Utils.framework/Modules
    mkdir BaiduMapKit-Modular/Vendors/BaiduMapAPI_Utils.framework/Modules
    touch BaiduMapKit-Modular/Vendors/BaiduMapAPI_Utils.framework/Modules/module.modulemap
    cat <<-EOF > BaiduMapKit-Modular/Vendors/BaiduMapAPI_Utils.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Utils {
      umbrella header "BMKUtilsComponent.h"
      
      export *
      link "sqlite3.0"
      link "stdc++.6.0.9"
    }
    \EOF
    
  EOF
  
end
