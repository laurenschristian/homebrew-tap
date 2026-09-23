cask "hush-audio" do
  version "0.4.0"
  sha256 "8ab34c3a05fe892c11ede7e9b4aecb62f9f1bd68e6326ab785f76776adca543e"

  url "https://github.com/laurenschristian/hush/releases/download/v#{version}/Hush-v#{version}.zip"
  name "Hush"
  desc "Blocks Apple Music, keeps AirPods off the mic, and routes play to your player"
  homepage "https://github.com/laurenschristian/hush"

  conflicts_with cask: "hush"
  depends_on macos: :sonoma

  app "Hush.app"

  uninstall quit: "com.laurenschristian.hush"

  zap trash: "~/Library/Preferences/com.laurenschristian.hush.plist"

  caveats <<~EOS
    Hush is not notarized. Before the first launch, run:
      xattr -dr com.apple.quarantine /Applications/Hush.app
  EOS
end
