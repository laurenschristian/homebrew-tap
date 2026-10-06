cask "portbar" do
  version "1.1.1"
  sha256 "fd5305bd0c03e2fd71d913981b77c872e584414ab185dc6947b8d865ce3c6b78"

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
