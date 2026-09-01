cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.18"
  sha256 arm:   "9ba96e263377821038b754f941406dbfb6270073043a8efb6f2db73f98e38cee",
         intel: "40761e96081ecccce0265e0ac606d2a2bf4eae92da5e651d9e2d0ee5f57e0c7a"

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
