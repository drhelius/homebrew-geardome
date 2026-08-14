cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.25"
  sha256 arm:   "3e63c7d14d18fcee781e3fc7a7ad9226c07d178a042a84bb080bb0103ad2569d",
         intel: "c1942e3d79bf14cafa7ce1487796e33feb83ad792239f58794f37ed95d8a45a6"

  url "https://github.com/drhelius/Gearlynx/releases/download/#{version}/Gearlynx-#{version}-desktop-macos-#{arch}.zip"
  name "Gearlynx"
  desc "Atari Lynx emulator"
  homepage "https://github.com/drhelius/Gearlynx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Gearlynx.app.zip"

  app "Gearlynx.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearlynx.plist",
    "~/Library/Application Support/gearlynx",
  ]
end
