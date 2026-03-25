cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.3"
  sha256 arm:   "0e38004171dd2e8fe741cce0209340cb8d4351ce0e585742cb8bd3f1fb96a44a",
         intel: "a81b109407aa07aceb3a24cf0b0f6ebb916efc3cdeefae85affb4a34391424dc"

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
