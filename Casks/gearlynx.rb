cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.36"
  sha256 arm:   "96158e06fc1236365b532793cddf9932620e2fe4c07d59737e62808cfac836fc",
         intel: "ac0805ba5fc9d2ac4f1e6e8c4c668cfef32a597fe8a5e92aef23e3d756d2d19a"

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
