cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.31"
  sha256 arm:   "b07c9ab01ebd00768bff30c6f22e8227d875eff67b2a8764562092f67c099b30",
         intel: "928b2c9870e20f4c3bfdb991363e06a9be9d441038f1545b03bf00e7054e5ae1"

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
