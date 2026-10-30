cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.7.6"
  sha256 arm:   "9d8b64a5733b2dc1f2612006b57dd96aaf9396c098854b12ddd39f9630defd40",
         intel: "e075736d9769fbedd6ed17e487ace538a21a8276a091e393810708def2e3540d"

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
