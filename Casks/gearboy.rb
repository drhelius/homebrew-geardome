cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.11"
  sha256 arm:   "3d7afab944a79204e181a724f04eaf982e4d55288d29f82c2dc230d961b6fc1c",
         intel: "850c205b0390116be7f161133395f6c8371e3fccf71bf78cb7f61730998c02ed"

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
