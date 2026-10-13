cask "localflow" do
  version "0.12.10"
  sha256 "4b1bdaa8a3bc7271abfa78530c87a36057aa5293fa47fdc2155667f7cce02c77"

  url "https://github.com/laurenschristian/local-flow/releases/download/v#{version}/LocalFlow-v#{version}-mac-arm64.dmg"
  name "LocalFlow"
  desc "Local Whisper dictation from the menu bar"
  homepage "https://github.com/laurenschristian/local-flow"

  app "LocalFlow.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/LocalFlow.app"]
  end

  zap trash: [
    "~/Library/Application Support/LocalFlow",
  ]
end
