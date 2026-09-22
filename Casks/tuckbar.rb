cask "tuckbar" do
  version "1.1.0"
  sha256 "c04e8124b59d0790add678aa19b0554e2aa0a514f942ac5fd060612fcfc286d5"

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
