cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.7"
  sha256 arm:   "082a05e8bdf336bcada3782aa7864ce5ccbe43e8d9de67b864fb5abca93879b4",
         intel: "0473365744a66bde965cbb4676620bee3b52779df8522be375ec74f818abba54"

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
