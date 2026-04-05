cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.6"
  sha256 arm:   "516cd969cc1b56b94bbf1255133e5daaa1c0f5dbee67dc3848e96e9c4df75527",
         intel: "fdf3ae69b2d21ba3efd45020528e6f2c050c24362d4a2dd6d7c8793b2318a25b"

  url "https://github.com/drhelius/Gearlynx/releases/download/#{version}/Gearlynx-#{version}-desktop-macos-#{arch}.zip"
  name "Gearlynx"
  desc "Atari Lynx emulator"
  homepage "https://github.com/drhelius/Gearlynx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  container nested: "Gearlynx.app.zip"

  app "Gearlynx.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearlynx.plist",
    "~/Library/Application Support/gearlynx",
  ]
end
