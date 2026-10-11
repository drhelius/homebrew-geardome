cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.7.4"
  sha256 arm:   "b089fb7c209daf25599d073579f2ef868834a982c0a9723c9687b088fe64e8d7",
         intel: "f4ccdb99375ca7f1c7b6e8ecc561b5850edf76e5f3c1f93a9bd10a5a5bcf6e25"

  url "https://github.com/drhelius/Gearcoleco/releases/download/#{version}/Gearcoleco-#{version}-desktop-macos-#{arch}.zip"
  name "Gearcoleco"
  desc "ColecoVision emulator"
  homepage "https://github.com/drhelius/Gearcoleco"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Gearcoleco.app.zip"

  app "Gearcoleco.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearcoleco.plist",
    "~/Library/Application Support/gearcoleco",
  ]
end
