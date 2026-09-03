cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.21"
  sha256 arm:   "584e774c595300ee3372d789765092c9fff91bfa26dc5e245a1f21ffc10a5cf0",
         intel: "fa86c29ec836e4035925e6b68cb41614282808c16fe6d29f2adb1ec55b18d40f"

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
