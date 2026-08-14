cask "localflow" do
  version "0.8.0"
  sha256 "7cb727908e8e7d6f1fbeabec16ab4eb4db8286786bda173f8657f1a8b1750109"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-#{version}.zip"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
