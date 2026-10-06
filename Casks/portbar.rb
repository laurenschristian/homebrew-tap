cask "portbar" do
  version "1.1.0"
  sha256 "1666380e82a3ac6a4b19b1eef7d65944c982b0380405b882d7fa55b9f27eb92d"

  url "https://github.com/laurenschristian/portbar/releases/download/v#{version}/PortBar-v#{version}.dmg"
  name "PortBar"
  desc "Shows which dev servers hold which ports, and stops them"
  homepage "https://github.com/laurenschristian/portbar"

  depends_on macos: :ventura

  app "PortBar.app"
  binary "#{appdir}/PortBar.app/Contents/MacOS/PortBar", target: "portbar"

  uninstall quit: "com.laurenschristian.portbar"

  zap trash: [
    "~/Library/Preferences/com.laurenschristian.portbar.plist",
    "~/Library/Logs/PortBar",
  ]

  caveats <<~EOS
    PortBar is not notarized. Before the first launch, run:
      xattr -dr com.apple.quarantine /Applications/PortBar.app
  EOS
end
