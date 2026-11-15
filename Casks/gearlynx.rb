cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.39"
  sha256 arm:   "752cb9772d40b52dd7d6b72f8368524844f9daa7b4428521030576276c128d3c",
         intel: "07854f967831e0c25f28ec13ff7e6480a717862b1db1f3eccf770db6a2cfac06"

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
