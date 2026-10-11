cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.18"
  sha256 arm:   "3120e7d2140029f0da18e12694e8ba278833879a46b8eb1955534d3a75523293",
         intel: "ea43b939673c910cb0cc8a68216a1c637efe88e1a06704b9310102d401fa8683"

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
