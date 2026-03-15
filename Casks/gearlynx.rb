cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.2"
  sha256 arm:   "e9fa8fcc389744ba21e68f44bf1d0062c32961ca9469f5b3ffd3ce092780f3ae",
         intel: "e8b143dcff6501353f11d752b7e541def303259ace734153be04968285620fff"

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
