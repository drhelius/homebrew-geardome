cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.14"
  sha256 arm:   "7b3fddbae30a0007196e97b9454d85177352ea16c5d839b351615b535db54bc6",
         intel: "af2c2b35b2982a35bb2245aadfe0f4c958bff669dcbc10e8956ab385e3f76590"

  url "https://github.com/drhelius/Geargrafx/releases/download/#{version}/Geargrafx-#{version}-desktop-macos-#{arch}.zip"
  name "Geargrafx"
  desc "TurboGrafx-16 / PC Engine / SuperGrafx / PCE CD-ROM² emulator"
  homepage "https://github.com/drhelius/Geargrafx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Geargrafx.app.zip"

  app "Geargrafx.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.geargrafx.plist",
    "~/Library/Application Support/geargrafx",
  ]
end
