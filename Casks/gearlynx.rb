cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.40"
  sha256 arm:   "4f0452c60cce004b965e8ec3ca01ad27c8eeb84f5c183b590f1f516c8e2bceb1",
         intel: "906d9a299c13021145e5090d8217e5a8d0a943c64ab9962dd89fa2eb72a3ff23"

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
