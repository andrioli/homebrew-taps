cask 'oracle-jdk13' do
  version '13,33:5b8a42f3905b406298b72d750b6919f6'
  sha256 '2dd149168b3b20d8c12f3d8f26f1cda97aa16f0a13e1eaba912aa478dfcfc539'

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_osx-x64_bin.dmg",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Oracle Java 13 Standard Edition Development Kit'

  pkg "JDK #{version.before_comma}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version.before_comma}",
            rmdir:   '/Library/Java/JavaVirtualMachines'
end
