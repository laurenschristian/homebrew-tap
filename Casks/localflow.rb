cask "localflow" do
  version "0.12.5"
  sha256 "4eb8dd0e7c16d4176f7acde10c7d5e80cda19ac582fb884319ddc26606ed94ba"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-v#{version}-mac-arm64.dmg"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
