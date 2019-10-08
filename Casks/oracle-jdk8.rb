cask 'oracle-jdk8' do
  version '8u221'
  url "https://www.dropbox.com/s/tlfg40dn1fel9x3/jdk-#{version}-macosx-x64.dmg?dl=1"
  sha256 'c49f96803c08b5fcd7cde1ccdcdc4fb483fc97c0fbadbbfe4c9020cdb26e79d6'
  name 'Oracle Java 8 Standard Edition Development Kit'

  pkg 'JDK 8 Update 221.pkg'

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
