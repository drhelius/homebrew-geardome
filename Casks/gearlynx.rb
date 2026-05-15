cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.11"
  sha256 arm:   "fe506f53cd97af1bd26ee0c256291082ea6d49203ae6cd5dee736e679d93c34f",
         intel: "8a9a6a10a20e4aad7131684634d8f5b6c101db8dd43b5cfc98220ef231bece8f"

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
