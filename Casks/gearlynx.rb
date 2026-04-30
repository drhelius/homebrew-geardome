cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.10"
  sha256 arm:   "ab8ec24f222e9892d4f47ba27c961ccba96ec7df3051cd3f13160773f01f9481",
         intel: "585abf19db677a1bb75aacd1f54cc62bfd6ba4a528b803be27d001df4baa4e66"

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
