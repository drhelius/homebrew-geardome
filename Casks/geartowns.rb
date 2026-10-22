cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "0.0.9"
  sha256 arm:   "edf5c4a52ca5e686d703072fe8284ea96125b78c72a93147a47407d154ea3999",
         intel: "34b2b4e3e7ce0f452c574b38900dc10c6b0f36df39f8cd6edd405e94bef7aa09"

  url "https://github.com/drhelius/Geartowns/releases/download/#{version}/Geartowns-#{version}-desktop-macos-#{arch}.zip"
  name "Geartowns"
  desc "FM Towns emulator"
  homepage "https://github.com/drhelius/Geartowns"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Geartowns.app.zip"

  app "Geartowns.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.Geartowns.plist",
    "~/Library/Application Support/geartowns",
  ]
end
