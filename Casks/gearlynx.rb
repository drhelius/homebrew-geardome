cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.35"
  sha256 arm:   "dc1bb12f4f24c395b80b1d8f0c594bbe3c2ed6f7892177fbf3668a9ff8fbc24d",
         intel: "a69147bbfc8e82545098cc997aa7d358817aeb4a2680f2fb88cef7d33c346562"

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
