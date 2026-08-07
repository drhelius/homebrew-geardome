cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.17"
  sha256 arm:   "dbfee7b6957d3e3377f7be30e5230ffe1266f842df87705532f3a6cc84f1fe3a",
         intel: "90d99118c3c29e64278107266529771fcc2fa49ab5cd9d872149bc7523b23877"

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
