cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "0.0.3"
  sha256 arm:   "32856dd8c612a33d7438f6aad959ae10a52aa3071ae021e3ab3f07fe74911657",
         intel: "af2f575991e177cf6b58e49b87569a195654776c1d8dcc4b02e46ed3ee92fef7"

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
