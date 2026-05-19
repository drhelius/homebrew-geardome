cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.12"
  sha256 arm:   "54b55943841134192355168b8651fccf6317987ba776b4ac934d86a53336e824",
         intel: "334755a8fd05afbea39008d2e029235c3fcb4b17dfef8393e3c7d198e3a1b8a8"

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
