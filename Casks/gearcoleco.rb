cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.7.0"
  sha256 arm:   "bca0177ce10bd626f054f78a628b0299fa817200102df3dd8eef3cf3265f75af",
         intel: "8dcf3db0f45134d769ceacd56ea5896115d69cd50dce863f63564c7b892eaa7d"

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
