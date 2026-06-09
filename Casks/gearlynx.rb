cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.13"
  sha256 arm:   "52442d758f43eb319e81f60ae41260639bd251a092392de2c2d3fba051db1118",
         intel: "02361f5476ddd4001aae5aa53db5a6008bb557f821fa06a338ea315614ae6d0f"

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
