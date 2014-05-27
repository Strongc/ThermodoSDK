# coding: utf-8
Pod::Spec.new do |s|
  s.name                = 'ThermodoSDK'
  s.version             = '1.1'
  s.summary             = 'ThermodoSDK provides a simple interface for interacting with Thermodo.'
  s.homepage            = 'http://developer.thermodo.com'
  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
              All text, design and code is protected under copyright © 2013 Robocat.
              All rights reserved.

              http://robocatapps.com/
    LICENSE
  }
  s.author              = { 'Robocat' => 'hello@robocatapps.com' }
  s.source              = { :git => 'https://github.com/thermodo/ThermodoSDK.git', :tag => '1.1' }
  s.ios.platform        = :ios, '6.0'
  s.osx.platform        = :osx, '10.9'
  s.ios.source_files        = 'ThermodoSDK/ThermodoSDK.framework/Versions/A/Headers/*.h'
  s.osx.source_files        = 'ThermodoSDK/ThermodoSDKMac.framework/Versions/A/Headers/*.h'
  s.ios.vendored_frameworks = 'ThermodoSDK/ThermodoSDK.framework'
  s.osx.vendored_frameworks = 'ThermodoSDK/ThermodoSDKMac.framework'
  s.ios.frameworks      = [ 'AVFoundation', 'CoreAudio', 'AudioToolbox', 'MediaPlayer' ]
  s.osx.frameworks      = [ 'AVFoundation', 'CoreAudio', 'AudioToolbox', 'AudioUnit' ]
  s.ios.preserve_paths  =  'ThermodoSDK/ThermodoSDK.framework/*'
  s.osx.preserve_paths  =  'ThermodoSDK/ThermodoSDKMac.framework/*'
  s.xcconfig            = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ThermodoSDK"' }
  s.requires_arc        = true
  s.prepare_command     = 'ruby copy_files_phase.rb'

end
