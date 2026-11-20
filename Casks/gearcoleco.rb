cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.8.1"
  sha256 arm:   "7b6b40c122a709a331aa08c2b06cfede90d6fe5756e2d3565b4cb7a12ad6ee24",
         intel: "dd7dc3733673b5d8282b5954ffca89f086b0ddb1cea7fca7a7d1369847de16e8"

  url "https://github.com/drhelius/Gearcoleco/releases/download/#{version}/Gearcoleco-#{version}-desktop-macos-#{arch}.zip"
  name "Gearcoleco"
  desc "ColecoVision emulator"
  homepage "https://github.com/drhelius/Gearcoleco"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Gearcoleco.app.zip"

  app "Gearcoleco.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearcoleco.plist",
    "~/Library/Application Support/gearcoleco",
  ]
end
