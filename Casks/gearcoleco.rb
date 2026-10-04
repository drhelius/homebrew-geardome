cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.7.3"
  sha256 arm:   "15a37cc9ee765033a63d49853251ea7d53c652d390e23706eb3d4c60316cd4d8",
         intel: "c276463f856cb7e3e61a9a64972f988598b94697389ab2ff11440b975d501471"

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
