#
# Be sure to run `pod lib lint TestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libvmaf'
  s.version          = '2.2.1'
  s.summary          = 'VMAF is a perceptual video quality assessment algorithm developed by Netflix.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
VMAF is a perceptual video quality assessment algorithm developed by Netflix.
This software package includes a stand-alone C library libvmaf and its wrapping Python library.
                       DESC

  s.homepage         = 'https://github.com/Netflix/vmaf'
  s.license          = { :type => 'BSD-2-Clause-Patent' }
  s.author           = { 'Netflix' => 'https://netflixtechblog.com/' }
  s.source           = { :git => 'https://github.com/SDWebImage/libvmaf-Xcode.git', :tag => s.version.to_s, :submodules => true }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'vmaf/libvmaf/src/**/*.{h,c,cpp}', 'vmaf/libvmaf/include/**/*.h', 'generate/**/*.{h,c,cpp}'
  s.public_header_files = 'vmaf/libvmaf/include/**/*.h'
  s.exclude_files = 'vmaf/libvmaf/src/x86', 'vmaf/libvmaf/src/ext', 'vmaf/libvmaf/src/compat', 'vmaf/libvmaf/src/feature/x86', 'vmaf/libvmaf/src/feature/common/convolution_avx.c', 'vmaf/libvmaf/src/libvmaf.cpp'
  
  s.pod_target_xcconfig = {
    'USE_HEADERMAP' => 'NO',
    'HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/libvmaf/vmaf/libvmaf/src ${PODS_TARGET_SRCROOT}/vmaf/libvmaf/src ${PODS_ROOT}/libvmaf/vmaf/libvmaf/src/feature ${PODS_TARGET_SRCROOT}/vmaf/libvmaf/src/feature ${PODS_ROOT}/libvmaf/vmaf/libvmaf/include ${PODS_TARGET_SRCROOT}/vmaf/libvmaf/include ${PODS_ROOT}/libvmaf/generate ${PODS_TARGET_SRCROOT}/generate'
  }
  s.preserve_paths = 'vmaf', 'generate'
  s.libraries = 'c++'
end
