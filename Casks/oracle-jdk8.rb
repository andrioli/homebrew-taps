cask 'oracle-jdk8' do
  version '8u231'
  url "https://www.dropbox.com/s/5sbnti0b9tjocoq/jdk-#{version}-macosx-x64.dmg?dl=1"
  sha256 'f808d11b34fa9ee7b6326b5b6dd18544496e02c84b839d94e062bd4493df5d45'
  name 'Oracle Java 8 Standard Edition Development Kit'

  pkg 'JDK 8 Update 231.pkg'

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
