cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.6.12"
  sha256 arm:   "ab06743f70769a83a9ddd1c8eaa8294dedf7ccb10338cb074a6ae7b200db23f6",
         intel: "411926f58973315991ae223e1ed6f30ae07f54de08489163360413dbe4f9fac0"

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
