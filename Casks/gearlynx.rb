cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.33"
  sha256 arm:   "a7ca3b2956f549e99a273abb12e78029c094ae541adbace2683534f5e93b4b58",
         intel: "dd6eeff549e5556c6c69a1e97d72cf7a0031fb9a77453d651c591e13fb1e2d3d"

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
