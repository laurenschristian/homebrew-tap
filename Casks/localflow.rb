cask "localflow" do
  version "0.12.2"
  sha256 "c246fe93d41db25b05cf5f502c7e8fa5a30fad7a12a4221583f3544a6a70a2e0"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-v#{version}-mac-arm64.dmg"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
