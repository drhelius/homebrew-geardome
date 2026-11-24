cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.11"
  sha256 arm:   "c7866492875b075ee2a8e5f36465c412bffa171d2a9e2ad9917809379bb2a283",
         intel: "f5a2d5865519c83cdbf7fa2528f95e8ce87133de123b3c73d1de9a5847844d4f"

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
