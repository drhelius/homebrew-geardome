cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.8"
  sha256 arm:   "65bc3fbdf3e592bc2ddf83b0a0806729d02adefddc69c102cbf1e1de7ab8a08b",
         intel: "97faff7b18dba67a45b0ea14ef8f21f4e4904bcddc01198a5dfb6f25ae7c2a9d"

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
