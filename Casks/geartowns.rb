cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.1"
  sha256 arm:   "52700a88b2697bbe14e09c88495919e82191b7877dda6d1bd0d67721a2fc63d7",
         intel: "81c1eaaa96b44f3f4deaf8cef33a10958a1664f4c9f276c75c86c66d1ff2a555"

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
