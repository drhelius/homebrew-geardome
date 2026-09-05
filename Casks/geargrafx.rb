cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.22"
  sha256 arm:   "94f416829e0558d7b5b9f310640fd56cb13e738300379a066ee572d2b5a21ce8",
         intel: "d2264000ed4e29bebc797fc1319fca1baebe70fd68f8872154a08b1b848f3294"

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
