cask "localflow" do
  version "0.10.0"
  sha256 "56da8073f763d4ca1331ddbd5d8d621b8ca036cf3c604b9b962cea08d98ad034"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-v#{version}-mac-arm64.dmg"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
