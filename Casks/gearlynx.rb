cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.3"
  sha256 arm:   "d80ab085ef6a6574cc736c4083f5d1cf95a1fd0ab5e75a5fcfd1e36abaff6d82",
         intel: "0e2a9e629afcda2eaf1df71f9e0a0b1cead559be7457281203dace59e43c11de"

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
