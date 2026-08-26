cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.30"
  sha256 arm:   "7abfd56912740d367c8e8123d9d524a99aec5c8ca3bfd1ebbbfb644d828d3ca0",
         intel: "a156733266a71c40e2d25f06b00c077a8d777a4a1c0319c23c99c8a61e4d65a6"

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
