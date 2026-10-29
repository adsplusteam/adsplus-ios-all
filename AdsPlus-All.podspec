#
#  Be sure to run `pod spec lint adsplus-ios-cn.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "AdsPlus-All"
  spec.version      = '4.4.1'
  spec.summary      = "AdsPlus通用版本."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
  这个是AdsPlus通用版本.的cocoapods
                   DESC

  spec.homepage     = "https://github.com/adsplusteam/adsplus-ios-all"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = { :type => "Proprietary", :text => "Copyright AdsPlus. All rights reserved." }
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "adsplus" => "adsplus@gmail.com" }
  # Or just: spec.author    = ""
  # spec.authors            = { "" => "" }
  # spec.social_media_url   = "https://twitter.com/"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
   spec.platform     = :ios, "13.0"
   spec.swift_version = "5.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"
  # spec.visionos.deployment_target = "1.0"



  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source       = { :git => "https://github.com/adsplusteam/adsplus-ios-all.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  #spec.source_files  = "Classes", "adsplus-ios-cn/ADP.framework/Headers/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

  # SDK的路径 写上库的位置 (自动生成没有这一项，不写会出错)
  spec.vendored_frameworks = 'AdsPlus-All/ADP.xcframework'
  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

   spec.resource  = "AdsPlus-All/ADPBundle.bundle"

  # add line
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  spec.dependency 'ADPFoundation', '1.0.0'
  spec.dependency 'ADPADX', '1.0.0'
  spec.dependency 'AliyunLogProducer', '3.1.16'
  spec.dependency 'AliyunOSSiOS', '2.10.22'
  spec.dependency 'AnyThinkiOS','6.5.84'
  spec.dependency 'AnyThinkMediationAdxSmartdigimktCNAdapter','6.5.90.2.1'
  spec.dependency 'AnyThinkMediationMintegralAdapter','8.1.6.2.0'
  
  #国内
  spec.dependency 'AnyThinkMediationBaiduAdapter','10.070.2.0'
  spec.dependency 'AnyThinkMediationZYAdapter','2.6.10.7.2.0'
  spec.dependency 'AnyThinkMediationKuaiShouAdapter','5.9.10.1.2.0'
  spec.dependency 'AnyThinkMediationTTAdapter','7.8.0.5.2.1'
  spec.dependency 'AnyThinkMediationGDTAdapter','4.16.12.2.0'
  spec.dependency 'AnyThinkMediationBeiZiAdapter','5.5.6.0.2.0'
  spec.dependency 'AnyThinkMediationFancyAdapter','3.0.23.2.0'
  
  #国外
  spec.dependency 'AnyThinkMediationAdmobAdapter','13.7.0.2.0'
  spec.dependency 'AnyThinkMediationInmobiAdapter','11.5.0.2.0'
  spec.dependency 'AnyThinkMediationApplovinAdapter','13.6.4.2.0'
  spec.dependency 'AnyThinkMediationVungleAdapter','7.7.8.2.0'
  spec.dependency 'AnyThinkMediationUnityAdsAdapter','4.19.0.2.0'
  spec.dependency 'AnyThinkMediationFacebookAdapter','6.21.1.2.1'
  spec.dependency 'AnyThinkMediationIronSourceAdapter','9.6.1.0.2.0'
  spec.dependency 'BigoADS','6.1.0'
  spec.dependency 'GoogleMobileAdsMediationFacebook','6.21.1.1.1'
  spec.dependency 'GoogleMobileAdsMediationVungle','7.7.8.0'
  spec.dependency 'GoogleMobileAdsMediationPangle','7.8.5.8.2'
  spec.dependency 'GoogleMobileAdsMediationMintegral','8.1.6.0'
  spec.dependency 'GoogleMobileAdsMediationBigo','6.1.0.0'
  
 
end
