cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.34"
  sha256 arm:   "a365d61d44ed21e25163a219cca40bd9509f03d23893aadd13dae7c8ee2599d9",
         intel: "4a6075768a602afe93ef14cd3cb54f6b00d9d5ff8760db260d587ac4e4476184"

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
