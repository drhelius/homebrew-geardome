cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.3"
  sha256 arm:   "01c4a9bb44de831d54a0c2c0b2636123e64448d7eef3c2714a51adb5e27d8815",
         intel: "a59ef00156cfc8815fc7d89048e58888792c9fbdb012031b7d9806e62016cd42"

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
