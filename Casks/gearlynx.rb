cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.15"
  sha256 arm:   "5879614f73bbe2182e4a2cb9cf27a20f4aefefede73908cf2efcca8f23973faf",
         intel: "92a3fcfe78fd1fc20154075d4fedb1937f47d0461e916d817913ca5d57e3f424"

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
