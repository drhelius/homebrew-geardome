cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.1.1"
  sha256 arm:   "2d6236c8e1c16e4361c5ca22e380a3a6103c1c77405feff24abd7e46ba5ea0b9",
         intel: "3e0a4e95c7b311dddec0f78968ddb9da1041cc0622731715a04dc3e482f080c4"

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
