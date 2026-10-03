cask "duskbar" do
  version "1.0.3"
  sha256 "19a4ad0e79cf70e8cc65d07fa014177070dd524f68bfb44a5db6ff0fb3095496"

  url "https://github.com/laurenschristian/duskbar/releases/download/v#{version}/DuskBar-v#{version}.dmg"
  name "DuskBar"
  desc "Warms the screen color with the real sun"
  homepage "https://github.com/laurenschristian/duskbar"

  depends_on macos: :ventura

  app "DuskBar.app"

  uninstall quit: "com.laurenschristian.duskbar"

  zap trash: "~/Library/Preferences/com.laurenschristian.duskbar.plist"

  caveats <<~EOS
    DuskBar is not notarized. Before the first launch, run:
      xattr -dr com.apple.quarantine /Applications/DuskBar.app
    Quit other screen color apps first; they fight over the display.
  EOS
end
