cask "openin" do
  version "1.5.0"
  sha256 "c462401a2e30ace1362a03f2b20a1576ec3b3d2284d9ceac2c37dfe066b08fb3"

  url "https://github.com/laurenschristian/OpenInApp/releases/download/v#{version}/OpenIn-v#{version}.dmg"
  name "OpenIn"
  desc "Fast, native macOS URL router and browser picker"
  homepage "https://github.com/laurenschristian/OpenInApp"

  app "OpenIn.app"

  zap trash: [
    "~/.config/openin",
  ]
end
