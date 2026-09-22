cask "tuckbar" do
  version "1.0.0"
  sha256 "4e664fb534310bddbe4f30318082e40ccf80ff324c39e4d6cdd16daa3b4d3d82"

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
