cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "0.0.8"
  sha256 arm:   "18e9c594de1a883d66fa655a758c7eb6bad1b31dc0650d8d5a526c5005adb6b1",
         intel: "821410a290a461f6face88439077e559edd7d6ea29c1461cfb1522bf9df0ab91"

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
