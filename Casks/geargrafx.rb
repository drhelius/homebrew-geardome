cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.4"
  sha256 arm:   "f2d626cbb26d0af9fb49758fae43fc698e2ab327a10a4212674d0869b7b9676b",
         intel: "70cead3aed698cebe960202fcbff186fb39cdd636479d281840a63c295dac333"

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
