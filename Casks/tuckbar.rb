cask "tuckbar" do
  version "1.3.0"
  sha256 "1f8dcbd596f2153e8482e4804cd53b2de72d39289720544e1762a0cec623c89f"

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
