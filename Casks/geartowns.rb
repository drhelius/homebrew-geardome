cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "0.0.4"
  sha256 arm:   "2af532a7cdb565e852a7212f9bc3d7db9e96775b359196a5d8bd720aeaaae72c",
         intel: "68f29535521e3d9c1d4d3e109e77cd9094f8f01e72b0f1090847a9071975cacd"

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
