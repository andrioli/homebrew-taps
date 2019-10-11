cask 'oracle-jdk12' do
  version '12.0.2,10:e482c34c86bd4bf8b56c0b35558996b9'
  sha256 'e7af8c66c4194ae12ff12d8ef172ae96e89ad512d896d4c98b0256708fe38b90'

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_osx-x64_bin.dmg",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Oracle Java 12 Standard Edition Development Kit'

  pkg "JDK #{version.before_comma}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version.before_comma}",
            rmdir:   '/Library/Java/JavaVirtualMachines'
end
