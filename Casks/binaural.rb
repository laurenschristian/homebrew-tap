cask "binaural" do
  version "2.0.2"
  sha256 "e428b355c281cdcaae0b97702366a0aca09c931b3019b796d4a61ceb6235c396"

  url "https://github.com/laurenschristian/binaural-releases/releases/download/v#{version}/Binaural.dmg"
  name "Binaural"
  desc "Generative focus music and binaural beats in the menu bar"
  homepage "https://github.com/laurenschristian/binaural-releases"

  auto_updates true
  depends_on macos: :sonoma

  app "Binaural.app"

  uninstall quit: "com.lgn.binaural"

  zap trash: [
    "~/Library/Preferences/com.lgn.binaural.plist",
  ]

  caveats <<~EOS
    Binaural is not notarized. Before the first launch, run:
      xattr -dr com.apple.quarantine /Applications/Binaural.app
  EOS
end
