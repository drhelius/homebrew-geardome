cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.10"
  sha256 arm:   "07553c3523d734240116e8d372b53ed97d3dd01faa707c5137a3a4cf7b96daef",
         intel: "3618731ef8cfb1112a9bbbc6969fee21fff38dbabfc98f5ce1d6baa681f34432"

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
