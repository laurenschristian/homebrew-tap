cask "openin" do
  version "1.3.0"
  sha256 "c39d26924398183fefee4da73ec3c8b3d89f9ddd5de7a8be82fcfaa47b6ffd1e"

  url "https://github.com/laurenschristian/OpenInApp/releases/download/v#{version}/OpenIn-v#{version}.dmg"
  name "OpenIn"
  desc "Fast, native macOS URL router and browser picker"
  homepage "https://github.com/laurenschristian/OpenInApp"

  app "OpenIn.app"

  zap trash: [
    "~/.config/openin",
  ]
end
