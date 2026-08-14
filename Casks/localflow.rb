cask "localflow" do
  version "0.9.0"
  sha256 "de3c4c71f531996654dcfd0f3a83fd9f40f648d68743b4030ccdd56a9f1babb4"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-v#{version}-mac-arm64.dmg"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
