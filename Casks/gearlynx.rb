cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.4"
  sha256 arm:   "f8598c17a6e849623530ca646b2882e9bf046479e6932b1fd344188f9ce071ca",
         intel: "5431a7bdf3c1b84303338982c93b58e781acbdd5db5380f60c287d8c2fa08ff4"

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
