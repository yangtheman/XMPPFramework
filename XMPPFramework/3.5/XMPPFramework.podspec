Pod::Spec.new do |s|
  s.name = 'XMPPFramework'
  s.version = '3.5'
  s.license = 'BSD'
  s.summary = 'An XMPP Framework in Objective-C for the Mac / iOS development community.'
  s.homepage = 'https://github.com/robbiehanson/XMPPFramework'
  s.author = { 'Robbie Hanson' => 'robbiehanson@deusty.com' }
  s.source = { :git => 'https://github.com/robbiehanson/XMPPFramework.git', :tag => '3.5' }

  s.description = 'XMPPFramework provides a core implementation of RFC-3920 (the xmpp standard), along with
                  the tools needed to read & write XML. It comes with multiple popular extensions (XEP\'s),
                  all built atop a modular architecture, allowing you to plug-in any code needed for the job.
                  Additionally the framework is massively parallel and thread-safe. Structured using GCD,
                  this framework performs well regardless of whether it\'s being run on an old iPhone, or
                  on a 12-core Mac Pro. (And it won\'t block the main thread... at all).'
  s.requires_arc = true
  
  s.source_files = 'Authentication/**/*.{h,m}','Categories','Core','Utilities','Vendor/libidn/idn-int.h','Vendor/libidn/stringprep.h'
  s.ios.source_files = 'Authentication/**/*.{h,m}','Categories','Core','Utilities','Vendor/libidn/idn-int.h','Vendor/libidn/stringprep.h','Vendor/KissXML/**/*.{h,m}'
  s.resource = "Vendor/libidn/libidn.a"

  s.libraries = 'xml2','resolv','idn'
  
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2 $(SDKROOT)/usr/include/libresolv',
                 'LIBRARY_SEARCH_PATHS' => '${PODS_ROOT}/XMPPFramework/Vendor/libidn'}
  
  s.dependency 'CocoaLumberjack','~>1.6'
  s.dependency 'CocoaAsyncSocket','~>0.0.1'

  #TODO Add subspecs for extensions

end
