cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.10"
  sha256 arm:   "2c0d4fc770987b9d226cd51a415f33622aeff22a484497b15a9ff1a3208e2008",
         intel: "b5f3fedab8910cf1826fef742fb7a01a14de159c1a2a6b3da7dc6f51a14082b6"

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
