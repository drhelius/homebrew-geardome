cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.0"
  sha256 arm:   "35856776e7f1b2f515957eee36ecce0f9c9a71f4e551b445b19b78a9661836c1",
         intel: "6d4018c247b123963898ea5daf240c7b24ab6a81c84b83d15da5d706bbfc1432"

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
