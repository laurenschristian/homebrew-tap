cask "duskbar" do
  version "1.0.0"
  sha256 "e70b639557d7cc53e052e15268cc3df69219141eb58f12e3a17b3087d57decb6"

  url "https://github.com/laurenschristian/duskbar/releases/download/v#{version}/DuskBar-v#{version}.dmg"
  name "DuskBar"
  desc "Warms the screen color with the real sun, a tiny f.lux replacement"
  homepage "https://github.com/laurenschristian/duskbar"

  depends_on macos: :ventura

  app "DuskBar.app"

  uninstall quit: "com.laurenschristian.duskbar"

  zap trash: "~/Library/Preferences/com.laurenschristian.duskbar.plist"

  caveats <<~EOS
    DuskBar is not notarized. Before the first launch, run:
      xattr -dr com.apple.quarantine /Applications/DuskBar.app
    Quit f.lux or other screen color apps first; they fight over the display.
  EOS
end
