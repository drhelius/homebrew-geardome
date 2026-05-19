cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.8"
  sha256 arm:   "c80d4811c46722d82051c65d0d55763195d9b77a99635a7146506380ae2b62d2",
         intel: "b45a88923bf9d5578f4f9c81eda5d80f5c0a20bfe7912d47f4b673c5e9a4383f"

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
