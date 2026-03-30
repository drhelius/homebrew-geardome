cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.3"
  sha256 arm:   "473199b8ec525e9dd5f4121b248e2db214e3d4642b972b0c645bcfea81d5f53d",
         intel: "370a394d7b271012b390e7600f31564aef7f1d9c6ff83dcc9950d5e338c2ed51"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System / Game Gear / SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearsystem.plist",
    "~/Library/Application Support/gearsystem",
  ]
end
