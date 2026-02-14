cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.0"
  sha256 arm:   "0da3d321e412a1e4074132ccbb53e18e1a20c7792308ff0afc222751814fa794",
         intel: "916b25af38dec79ca9724103bc0870cbc621d3fd2300dd631afb0e99c1846ef3"

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
