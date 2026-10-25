cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.0"
  sha256 arm:   "49138200acc60d81941064610025a0d5aa8a54b961f6df39b26fdc7a0504a9a6",
         intel: "a9fe5d6ce5228db8195d1298ba565a35a9e0090f9597121ac31ec92fa1bb6dc6"

  url "https://github.com/drhelius/Geartowns/releases/download/#{version}/Geartowns-#{version}-desktop-macos-#{arch}.zip"
  name "Geartowns"
  desc "FM Towns emulator"
  homepage "https://github.com/drhelius/Geartowns"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Geartowns.app.zip"

  app "Geartowns.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.Geartowns.plist",
    "~/Library/Application Support/geartowns",
  ]
end
