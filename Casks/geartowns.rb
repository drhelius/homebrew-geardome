cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "0.0.7"
  sha256 arm:   "6e45ab0b39d7e1b2602443e6a28897ec1ffc84d62522c4bcef4ae5f7292a9b3e",
         intel: "8a29460e0a682178f4e4aa8c38eeb5a08e2d4610449801bbc64c3cb52fc9c683"

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
