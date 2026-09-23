cask "tuckbar" do
  version "1.3.1"
  sha256 "549a870e4e9f57e40386160012ef6625c42224d7780f389f2405019447727f7a"

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
