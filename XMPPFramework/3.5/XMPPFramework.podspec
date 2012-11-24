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
 
  s.source_files = 'Authentication/**/*.{h,m}','Categories','Core','Utilities','Vendor/libidn/*.h'
  s.ios.source_files = 'Authentication/**/*.{h,m}','Categories','Core','Utilities','Vendor/libidn/*.h','Vendor/KissXML/**/*.{h,m}'
  s.resource = "Vendor/libidn/libidn.a"

  s.libraries = 'xml2','resolv','idn'
  
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2 $(SDKROOT)/usr/include/libresolv',
                 'LIBRARY_SEARCH_PATHS' => '${PODS_ROOT}/XMPPFramework/Vendor/libidn'}
  
  s.dependency 'CocoaLumberjack','~>1.6'
  s.dependency 'CocoaAsyncSocket','~>0.0.1'

  s.subspec 'BandwidthMonitor' do |bwm|
    bwm.source_files = 'Extensions/BandwidthMonitor'
  end

  s.subspec 'CoreDataStorage' do |cds|
    cds.source_files = 'Extensions/CoreDataStorage'
    cds.framework  = 'CoreData'
    #objc/runtime.h
    #libkern/OSAtomic.h 
  end

  s.subspec 'ProcessOne' do |po|
    po.source_files = 'Extensions/ProcessOne'
  end

  s.subspec 'Reconnect' do |rc|
    rc.source_files = 'Extensions/Reconnect'
  end

  s.subspec 'Roster' do |ro|
   #Cocoa/Cocoa.h
   ro.source_files = 'Extensions/Roster/**/*.{h,m}'
  end

  s.subspec 'XEP-0009' do |xep9|
    xep9.source_files = 'Extensions/XEP-0009'
  end

  s.subspec 'XEP-0016' do |xep16|
    xep16.source_files = 'Extensions/XEP-0016'
  end

  s.subspec 'XEP-0045' do |xep45|
    xep45.source_files = 'Extensions/XEP-0045/**/*.{h,m}'
  end

  s.subspec 'XEP-0054' do |xep54|
    xep54.source_files = 'Extensions/XEP-0054/**/*.{h,m}'
  end

  s.subspec 'XEP-0060' do |xep60|
    xep60.source_files = 'Extensions/XEP-0060'
  end

  s.subspec 'XEP-0065' do |xep65|
    xep65.source_files = 'Extensions/XEP-0065'
  end

  s.subspec 'XEP-0082' do |xep82|
    xep82.source_files = 'Extensions/XEP-0082'
  end

  s.subspec 'XEP-0085' do |xep85|
    xep85.source_files = 'Extensions/XEP-0085'
  end

  s.subspec 'XEP-0100' do |xep100|
    xep100.source_files = 'Extensions/XEP-0100'
  end

  s.subspec 'XEP-0115' do |xep115|
    xep115.source_files = 'Extensions/XEP-0115/**/*.{h,m,xcdatamodel}'
  end

  s.subspec 'XEP-0136' do |xep136|
    xep136.source_files = 'Extensions/XEP-0136/**/*.{h,m}'
  end

  s.subspec 'XEP-0153' do |xep153|
    xep153.source_files = 'Extensions/XEP-0153'
  end

  s.subspec 'XEP-0184' do |xep184|
    xep184.source_files = 'Extensions/XEP-0184'
  end

  s.subspec 'XEP-0199' do |xep199|
    xep199.source_files = 'Extensions/XEP-0199'
  end

  s.subspec 'XEP-0202' do |xep202|
    xep202.source_files = 'Extensions/XEP-0202'
  end

  s.subspec 'XEP-0203' do |xep203|
    xep203.source_files = 'Extensions/XEP-0203'
  end

  s.subspec 'XEP-0224' do |xep224|
    xep224.source_files = 'Extensions/XEP-0224'
  end
  
end
