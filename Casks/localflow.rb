cask "localflow" do
  version "0.12.6"
  sha256 "18d8a317cb15a54220a7c58a79ce1aa166f3c405d4b6884748a3630dea3e237d"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-v#{version}-mac-arm64.dmg"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
