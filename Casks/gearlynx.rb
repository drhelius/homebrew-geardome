cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.28"
  sha256 arm:   "76e4be413616550ede058177c78065947d6a14817809a5a0d1c4382221fbeff5",
         intel: "04f3ac818e6f0143cb10a3395a3597a43390a80303cb43ad06d05d3a26ab4a16"

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
