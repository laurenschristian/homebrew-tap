cask "portbar" do
  version "1.0.0"
  sha256 "33f10f811035edf18c20c1d9db6cfc6093558f02c6ce6977f30a9f864eead605"

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
