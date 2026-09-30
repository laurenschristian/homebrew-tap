cask "duskbar" do
  version "1.0.1"
  sha256 "15351dbc51492881daf60852f36f25bc6c4ec6a417b98667de3dcdd7c802eadf"

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
