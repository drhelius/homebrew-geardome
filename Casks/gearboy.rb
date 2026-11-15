cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.21"
  sha256 arm:   "fed0a8231366628a2c590e39939d46ddad9a000b3aa71195356e044faad19b8f",
         intel: "8f2d4634da2175bd8b070d819c0afee84ed4d6feb343e8a599290db2f945d382"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-desktop-macos-#{arch}.zip"
  name "Gearboy"
  desc "Game Boy / Game Boy Color emulator"
  homepage "https://github.com/drhelius/Gearboy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Gearboy.app.zip"

  app "Gearboy.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearboy.plist",
    "~/Library/Application Support/gearboy",
  ]
end
