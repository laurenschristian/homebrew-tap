cask "tuckbar" do
  version "1.4.0"
  sha256 "18616b51719a785af37d8769912ddb4be58f27b323dd350c6e506cb6db1b5215"

  url "https://github.com/laurenschristian/tuckbar/releases/download/v#{version}/TuckBar-v#{version}.dmg"
  name "TuckBar"
  desc "Hide menu bar icons with a flat, tiny memory footprint"
  homepage "https://github.com/laurenschristian/tuckbar"

  depends_on macos: :ventura

  app "TuckBar.app"

  uninstall quit: "com.laurenschristian.tuckbar"

  zap trash: "~/Library/Preferences/com.laurenschristian.tuckbar.plist"

  caveats <<~EOS
    TuckBar is not notarized. Before the first launch, run:
      xattr -dr com.apple.quarantine /Applications/TuckBar.app
  EOS
end
