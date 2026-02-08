cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.1.4"
  sha256 arm:   "00bbdfa85b750bfbc955aac120e749cae02221d69eb4ab320d4b9d0408646c1d",
         intel: "11ad0d003b04062a2b683b8c5cf4012220a62cb763042c21aafd672820c6fa9a"

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
