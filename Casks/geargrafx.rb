cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.18"
  sha256 arm:   "3e79c9371adb934376ae4d2e9558219702a4ce82aa6956c6664d84f6aceea51f",
         intel: "963a8b28a3bf9faa85aab992de6e37b239dfc5365a879458abe776212571792c"

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
