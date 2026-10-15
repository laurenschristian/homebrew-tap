cask "binaural" do
  version "2.0.0"
  sha256 "058abd874fef676e778872b2ea8a450b3971286198282fef54a65f8d7c668beb"

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
