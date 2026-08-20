cask "localflow" do
  version "0.12.0"
  sha256 "0cd452d6d88d6e25e3803f1165707e30efa6e0e8bb24e2510db8c3a08304dfb2"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-v#{version}-mac-arm64.dmg"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
