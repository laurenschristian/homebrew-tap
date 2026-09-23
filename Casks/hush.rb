cask "hush" do
  version "0.3.0"
  sha256 "0d1938d7c69a5b5fd11bac2e384c34fb58f1c690cdd83c5c9ea73816fe0e7cb3"

  url "https://github.com/laurenschristian/hush/releases/download/v#{version}/Hush-v#{version}.zip"
  name "Hush"
  desc "Blocks Apple Music, keeps AirPods off the mic, and routes play to your player"
  homepage "https://github.com/laurenschristian/hush"

  depends_on macos: :sonoma

  app "Hush.app"

  uninstall quit: "com.laurenschristian.hush"

  zap trash: "~/Library/Preferences/com.laurenschristian.hush.plist"

  caveats <<~EOS
    Hush is not notarized. Before the first launch, run:
      xattr -dr com.apple.quarantine /Applications/Hush.app
  EOS
end
