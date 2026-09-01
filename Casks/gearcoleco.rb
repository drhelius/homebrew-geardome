cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.13"
  sha256 arm:   "6e3be2560c18c14f67975c023a1cd15a21992facdb0f7a925e7ccc2bd693e317",
         intel: "b269cef0cacd14f0cedf869e75b6977d13faaf3992505d2dc9f9cbd3d26ca128"

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
