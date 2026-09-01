cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.15"
  sha256 arm:   "4ce80c048e955becc8386dd8968e2b4c8cbc61c3887e3d4c9aecb8da5f1b9203",
         intel: "c5851263aad83b6b9e8b8e75f84746d9a0d95aedb06a0bdbeac6794c00b8d06f"

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
