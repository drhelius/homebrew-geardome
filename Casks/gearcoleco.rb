cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.6"
  sha256 arm:   "994261b6e03521eec2d5dbdb2213591b4ce42b14319e931bb9fdf18c5048c736",
         intel: "61308a76ae0a48dffe592b259479dd65dc741e43ef1460f7cc354ef4c5a7d72e"

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
