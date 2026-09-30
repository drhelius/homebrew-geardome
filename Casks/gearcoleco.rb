cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.7.2"
  sha256 arm:   "edecf5b31d288377247afc3db7bc3e6837d5306a056211aad35bb2c430c6c4fc",
         intel: "b8ffa1037d4f3e83d3bfaa1d1a20d7c16223aa44ecccc2cc248ce2385370c3c1"

  url "https://github.com/drhelius/Gearcoleco/releases/download/#{version}/Gearcoleco-#{version}-desktop-macos-#{arch}.zip"
  name "Gearcoleco"
  desc "ColecoVision emulator"
  homepage "https://github.com/drhelius/Gearcoleco"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Gearcoleco.app.zip"

  app "Gearcoleco.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearcoleco.plist",
    "~/Library/Application Support/gearcoleco",
  ]
end
