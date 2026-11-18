cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.9"
  sha256 arm:   "75936e60a52fa0b09ec683fd5c63c46e751503443a36bcd41adcea488cf4ee04",
         intel: "9f22b350e50f0cb76f7a79a4a02e6f541ae3c842b8889b333312509868384419"

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
