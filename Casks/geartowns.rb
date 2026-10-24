cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "0.0.11"
  sha256 arm:   "344e1ebadef438b67619c10ffd371ad6068a2feebc7f02df23edf422f046b527",
         intel: "94edb1d4184f6f27b4c50c83edff947e0e2accdb22bd98618cfa082b990e8137"

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
