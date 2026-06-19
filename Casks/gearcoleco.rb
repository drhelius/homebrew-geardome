cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.4"
  sha256 arm:   "fe1854527e75e6be7294526b63cf2b67a1ddb451fe777a4eaa491ac0e56fa106",
         intel: "6de205c3afb76fc1b5198fb50c72b5304ca2cb47304f0b567b1bd2d4272083f2"

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
