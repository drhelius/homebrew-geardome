cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.2"
  sha256 arm:   "6e0bbc6a2f25a4432920dacfb58d7bbfd9f448bee44fab38acfc46d082be075f",
         intel: "0e2942cce92618932e2b7c30461700ef05fb19c9ddadab45b907606b5c91cb03"

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
