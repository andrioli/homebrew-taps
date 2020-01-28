cask 'oracle-jdk8' do
  version '8u241'
  url "https://www.dropbox.com/s/67kldenczdpq3vd/jdk-#{version}-macosx-x64.dmg?dl=1"
  sha256 '57a13fca47039dcd371158c0ed3265f407ba4184fb53e9cb2a95f8ecc49154ab'
  name 'Oracle Java 8 Standard Edition Development Kit'

  pkg 'JDK 8 Update 241.pkg'

  uninstall pkgutil: "com.oracle.jdk#{version}",
            delete: [
              '/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin',
              '/Library/PreferencePanes/JavaControlPanel.prefPane',
            ]

  zap trash: [
    '~/Library/Application Support/Oracle/Java',
    '~/Library/Application Support/com.oracle.java.JavaAppletPlugin.plist',
    '~/Library/Application Support/com.oracle.javadeployment.plist',
  ]

end
