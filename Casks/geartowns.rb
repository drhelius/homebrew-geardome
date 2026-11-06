cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.6"
  sha256 arm:   "eabf9ea40d429a943df598c61650b86838bcb2aaa5a75cb9aa620c7bcada823d",
         intel: "827d3825b8e40225d182ffe63d7ff9d5285964534034c7bc49cb7801d3efa4e4"

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
