cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.7"
  sha256 arm:   "cf2f142831a217231285053a42e21f93804ddf669f275e6a68981d03aa13cf31",
         intel: "d8921b1bbf6710305ec682a5f016b1746e44fbf7523a873e013837acb3e8484d"

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
