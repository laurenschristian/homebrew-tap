cask "localflow" do
  version "0.12.11"
  sha256 "0023806d527ca530b00a9129507b19836e34197763a2d25b364c215597fff4ec"

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
