cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.5"
  sha256 arm:   "913db52bea338edc491b538502c6533e41cff768aca9bb8685642f1fdd887316",
         intel: "bdd07350debd39a149a84b0883df685a1a095931159531b09564fd3ae61beac3"

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
