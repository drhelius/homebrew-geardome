cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.7"
  sha256 arm:   "b624b14a448cea88b2293071d8194a45c6d6635311c389822ad2cb0e21532e54",
         intel: "3ae10c4fcd116775ac282f4f7a97f0f9d2195595b0e49188adca1813d97d54c3"

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
