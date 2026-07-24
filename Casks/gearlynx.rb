cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.20"
  sha256 arm:   "c32fcaeafc57f4e01fe17b27a74201747270511665193e5e8d11a1ff2ceeb289",
         intel: "f21fabc9f1173d49894417389971a6f1a3efa711c2bd2b0532cfae77fc9c921c"

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
