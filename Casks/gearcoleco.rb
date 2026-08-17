cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.10"
  sha256 arm:   "91824778c55fe0ac4469479c7042105a7f2f005d966c7ed9e2e98ec451b1a518",
         intel: "b2b070c108ae4a39713aed1f7ec9ff7167ab20ee6584e3761cdcdcfecfa165f0"

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
