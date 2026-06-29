cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.18"
  sha256 arm:   "18b284b0fcc5b69210efe297bbee4d396b326f38f6a1c14116274c68a73e28ae",
         intel: "be2d4fd108098defd038c6c827a1f1cef3b07806d68582627e724dee6b3f0474"

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
