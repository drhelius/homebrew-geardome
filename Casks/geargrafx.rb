cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.4"
  sha256 arm:   "6789c6bef831e9ab52de54efa8451d57c7672efaa3cde364172067cb6cc13447",
         intel: "587c61007565aaab2de9b3f89fabc34e4bbd81265e6934d6db9e7dbd16772224"

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
