cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.5"
  sha256 arm:   "ae58ef43a33b83a9e1e5daa9a885babec9336bebc5071728ac62b319d092c30a",
         intel: "b5c5be2dfb5a9030b6962080471465e9ba2b69313f4642b39b0221ee698cea0f"

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
