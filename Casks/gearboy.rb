cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.3"
  sha256 arm:   "fa1da4add52fc36f53b68e2adbdcc69cc0ef76f661c98d8c98174e3b869acf7b",
         intel: "7950fd2b0882f16bfbe099ba8f5035130026df654f25d041bd023ad0e6bbedba"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-desktop-macos-#{arch}.zip"
  name "Gearboy"
  desc "Game Boy / Game Boy Color emulator"
  homepage "https://github.com/drhelius/Gearboy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  container nested: "Gearboy.app.zip"

  app "Gearboy.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearboy.plist",
    "~/Library/Application Support/gearboy",
  ]
end
