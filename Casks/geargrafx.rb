cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.15"
  sha256 arm:   "4034b1951a67d07958ffadb9e8282b4911c868efde530757ab5b6c5c31203536",
         intel: "37b8b3c021f047387024603ac2e8613ebce7ff56f5690afd62cf11fde0ca85d8"

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
