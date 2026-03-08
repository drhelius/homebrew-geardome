cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.1"
  sha256 arm:   "b0ca87d5c32d5c9c02deefacfcda80e941abefb2d42c3ded5e08812e95fb8b11",
         intel: "f676b305e59567b76e5cdc4bf7f256eb00a44d43cfd510ee1e54f9ce0a69d2b1"

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
