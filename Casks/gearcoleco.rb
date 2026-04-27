cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.0"
  sha256 arm:   "75cd4ed5a11292af05ef156d5bb31e978e073cbd104c0661be46caf433738b68",
         intel: "d1ea7af9d6d727a63cb3907f64e61aec417860de1d9acc812a8bf37e492afa1b"

  url "https://github.com/drhelius/Gearcoleco/releases/download/#{version}/Gearcoleco-#{version}-desktop-macos-#{arch}.zip"
  name "Gearcoleco"
  desc "ColecoVision emulator"
  homepage "https://github.com/drhelius/Gearcoleco"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  container nested: "Gearcoleco.app.zip"

  app "Gearcoleco.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearcoleco.plist",
    "~/Library/Application Support/gearcoleco",
  ]
end
