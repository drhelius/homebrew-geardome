cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "0.0.5"
  sha256 arm:   "175bf4a63baefc3119501b770a2e62480a4fd1caf48cfe530bb6f762d8239c45",
         intel: "ada677a22e3c9f52195887d999814fa2f18b7cc2a80e7811615106409acc689c"

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
