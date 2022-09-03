Pod::Spec.new do |s|
  s.name             = 'Brotli'
  s.version          = '1.0.2'
  s.summary          = 'Brotli ompression format'
  s.description      = "Brotli compression format"
  s.homepage         = 'https://github.com/cute/Brotli'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Karl von Randow' => 'karl@xk72.com' }
  s.source           = { :git => 'https://github.com/cute/Brotli.git', :tag => s.version.to_s, :submodules => true }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.7"
  s.watchos.deployment_target = "2.0"

  s.source_files = 'Brotli/Source/c/common/*.c', 'Brotli/Source/c/dec/*.c', 'Brotli/Source/c/enc/*.c', 'Brotli/Source/c/include/**/*'
  s.compiler_flags = '-Wno-unreachable-code'
  s.preserve_paths = 'Brotli/Source/c/common/*.h', 'Brotli/Source/c/dec/*.h', 'Brotli/Source/c/enc/*.h', 'Brotli/Source/c/include/**/*'
  s.header_mappings_dir = "Brotli/Source/c/include"
  s.public_header_files = 'Brotli/Source/c/include/**/*'
end
