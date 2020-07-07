Pod::Spec.new do |s|
    s.name = 'AppStoreConnect'
    s.authors = 'Yonas Kolb'
    s.summary = 'A generated API'
    s.version = '1.2'
    s.homepage = 'https://github.com/yonaskolb/SwagGen'
    s.source = { :git => 'git@github.com:https://github.com/yonaskolb/SwagGen.git' }
    s.ios.deployment_target = '9.0'
    s.tvos.deployment_target = '9.0'
    s.osx.deployment_target = '10.9'
    s.subspec 'AppStoreConnectClient' do |cs|
      cs.source_files = 'Sources/Client/*.swift'
      cs.dependency 'AppStoreConnect/AppStoreConnectRequests'
      s.dependency 'Alamofire', '~> 4.9.0'
    end
    s.subspec 'AppStoreConnectModels' do |cs|
      cs.source_files = 'Sources/Models/*.swift'
    end
    s.subspec 'AppStoreConnectRequests' do |cs|
      cs.dependency 'AppStoreConnect/AppStoreConnectModels'
      cs.dependency 'AppStoreConnect/AppStoreConnectSharedCode'
      cs.source_files = 'Sources/Requests/*.swift'
    end
    s.subspec 'AppStoreConnectSharedCode' do |cs|
      cs.source_files = 'Sources/SharedCode/*.swift'
    end
    s.source_files = 'Sources/**/*.swift'
end
