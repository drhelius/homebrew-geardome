cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.12"
  sha256 arm:   "099461c136c3a1bd50ed32fcf4175f623d53613ccf3a475bc7501a1a6f4adc59",
         intel: "82d79c305a7c1845e7a6d8144adfdc7c77783acca7ad9633fd47c6938151f641"

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
