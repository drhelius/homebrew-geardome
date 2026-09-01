cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.20"
  sha256 arm:   "771a71b96bdae29660a34e01b3d5eea65938693f58f3efa54be2ea749e3d3b3c",
         intel: "081c08f8f0ac2a967177c9a5e0712eef3e10c85a4585f1913232e3cee842b7cb"

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
