cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.5"
  sha256 arm:   "e4828984619b272d626b821e5f7c4bb7572284ab859d57e51f85029d15b634a1",
         intel: "54db48bf30af5f8841c0d43952bcc655e4f5b3958cbc83d40cecec99e151e47c"

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
