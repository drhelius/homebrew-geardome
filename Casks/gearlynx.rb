cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.1"
  sha256 arm:   "df7f79d10cd1c4ce4af2dab764c554185f64b951bfca7c0ea3c56758a1b510a8",
         intel: "537b063085507b7438c64af07a02bd8d4f8e7c83a9f938c95911f504dfdc4e1c"

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
