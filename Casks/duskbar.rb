cask "duskbar" do
  version "1.0.2"
  sha256 "478bf3ceacf73d24012cfc854a9331beab35191b2d5b3433ec1949ec352dbc2b"

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
