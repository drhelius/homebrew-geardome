cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.8.0"
  sha256 arm:   "5672ed0145120adb1b96c75d70b6d87c23e1a845b4ed365aac725006dfdefd7f",
         intel: "0a7c6b463c1ed9d14a13a85e067cc214df4b35390aa9c045be017a6c744e6f6b"

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
