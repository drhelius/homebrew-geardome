cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.1"
  sha256 arm:   "7ff21f2c1ac7168b683536b082bf48f59921bbc53ebc3578ea4385002b5b815f",
         intel: "e4a81cc667ea1eeb07a012d1d0fd56e6efadd7852c2f75267f8d984143f7d7f2"

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
