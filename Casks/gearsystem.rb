cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.26"
  sha256 arm:   "9574c30d5da0a450af8ca5414131df9e383aeffbe8fe1e4d87a8a2c16feacb6f",
         intel: "4d21081aba7917679bf3253b41949702a4de225233aad5464529d2afc5f46082"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System / Game Gear / SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearsystem.plist",
    "~/Library/Application Support/gearsystem",
  ]
end
