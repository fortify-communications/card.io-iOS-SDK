#
# Be sure to run `pod lib lint Flurry-iOS-SDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CardIO'
  s.version          = '5.3.2'
  s.summary          = 'CardIO SDK for iOS'
  s.license          = { :type => 'Commercial', :file => 'Licenses/CardIO-LICENSE.txt' }
  s.description      = 'CardIO SDK consists of: CardIO for card scanning tracking and reporting'
  s.homepage = 'http://fortify.pro'
  s.author           = { 'Flurry' => 'integration@fortify.pro' }
  s.source           = { :git => 'https://github.com/fortify-communications/card.io-iOS-SDK.git', :tag => s.version.to_s }
  s.requires_arc = false
  s.platforms   = { :ios => "6.0", :watchos => "2.0" }
  s.default_subspec = 'CardIOSDK'

  s.subspec 'CardIOSDK' do |ss|
    ss.source_files = [
      'CardIO/CardIO.h',
      'CardIO/CardIOCreditCardInfo.h',
      'CardIO/CardIODetectionMode.h',
      'CardIO/CardIOPaymentViewController.h',
      'CardIO/CardIOPaymentViewControllerDelegate.h',
      'CardIO/CardIOUtilities.h',
      'CardIO/CardIOView.h',
      'CardIO/CardIOViewDelegate.h'
    ]

    ss.platform   = :ios, '6.0'
    ss.frameworks = 'Accelerate', 'AVFoundation', 'AudioToolbox', 'CoreMedia', 'CoreVideo', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security', 'UIKit'
    ss.libraries  = 'c++'
    ss.weak_framework = 'WatchConnectivity'
    ss.vendored_libraries = "CardIO/libs/*.a"
  end

end
