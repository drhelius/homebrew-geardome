cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.6.14"
  sha256 arm:   "07ed80dea153fcec09cfe206802dd405f9b83a98d56fb53ac138bc66f6c68b8a",
         intel: "e665714d2bfc802f67e76dee58b22352e61b3d101cb8c747cc93cfc36776814e"

  url "https://github.com/drhelius/Geargrafx/releases/download/#{version}/Geargrafx-#{version}-desktop-macos-#{arch}.zip"
  name "Geargrafx"
  desc "TurboGrafx-16 / PC Engine / SuperGrafx / PCE CD-ROM² emulator"
  homepage "https://github.com/drhelius/Geargrafx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  container nested: "Geargrafx.app.zip"

  app "Geargrafx.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.geargrafx.plist",
    "~/Library/Application Support/geargrafx",
  ]
end
