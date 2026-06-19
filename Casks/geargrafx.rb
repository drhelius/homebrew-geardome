cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.11"
  sha256 arm:   "7f7256457ad7126e6a44a8655222bd15755f9daa445cdd194c052dc7fdea602e",
         intel: "da864bfece9892a71c434b80a16193e29d3d5179bf7437c60c8dcaacc0109c82"

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
