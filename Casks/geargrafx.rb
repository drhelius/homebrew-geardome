cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.6"
  sha256 arm:   "dcde6a3aab617cc4e556dc59e7a27be4498532d19abb9f6b58dc66979b4ff5e3",
         intel: "275822dd045ff9336be82c25edcd1048b789c23e72e3cf3f1d5503fdf67e7ca6"

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
