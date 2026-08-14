cask "localflow" do
  version "0.8.0"
  sha256 "301c165564cb149f416ce8d07e2d5c76e6981eb49f284f2161021291cf2be9ee"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-v#{version}-mac-arm64.dmg"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
