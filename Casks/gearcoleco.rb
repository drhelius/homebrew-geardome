cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.5.5"
  sha256 arm:   "bd162602cf19b9b42173602e7adf1dd1c23f9c88ec45ecc4c7811aeeef8061a6",
         intel: "77032769235ba8ab4fc2d7519a6d611f7bfb19d21ac7cb745cb5204dbef51788"

  url "https://github.com/drhelius/Gearcoleco/releases/download/#{version}/Gearcoleco-#{version}-macos-#{arch}.zip"
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
