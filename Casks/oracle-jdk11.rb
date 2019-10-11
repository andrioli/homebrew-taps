cask 'oracle-jdk11' do
  version '11.0.4'
  sha256 '79f3766105b5bb2aa1a200464de8ee8c98e7af0128a0585637f0b3daaf161d33'

  url "https://www.dropbox.com/s/lb3orjbz3bhhx0i/jdk-#{version}_osx-x64_bin.dmg?dl=1"
  name 'Oracle Java 11 Standard Edition Development Kit'

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}",
            rmdir:   '/Library/Java/JavaVirtualMachines'
end
