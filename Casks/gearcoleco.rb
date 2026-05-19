cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.2"
  sha256 arm:   "b68ddbe6a95521c1f74e897df3f14e2e298e97d22a7865782df5c5f0d233ee6a",
         intel: "e015cfa8024d9eaad271f5f02c3eec3dc1cbc72dab98ea1c0ab844b206247f00"

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
