cask "localflow" do
  version "0.12.4"
  sha256 "accadff3bd3ed4b4b1492ae246af6b57c79bff9cbce57c0f93aba1343b7262aa"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-v#{version}-mac-arm64.dmg"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
