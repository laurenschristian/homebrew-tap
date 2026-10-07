cask "localflow" do
  version "0.12.9"
  sha256 "aa83af31bf0e362e8de7d287a922d05d21df7adfa5aa626a97e199712a3a987d"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-v#{version}-mac-arm64.dmg"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
