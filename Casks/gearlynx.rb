cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.19"
  sha256 arm:   "a6864600500dd0b90677675e9911ddee95693c68e760d74bbeb1e0ebf17851ca",
         intel: "b9195883a5d5f68db186d7b2b556d6c8993d8070ce364a904528bfebc4514fcf"

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
