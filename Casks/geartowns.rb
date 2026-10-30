cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.3"
  sha256 arm:   "f1fdbb656b370b3b13ffe2301c16f9e419fd9118f5fdbe7719f2d673e373cf6b",
         intel: "9f27184681bf000d43605c5838a23e5587968e1c346d04d6d9e95a75ffb82ecc"

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
