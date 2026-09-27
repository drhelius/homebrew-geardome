cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.7.1"
  sha256 arm:   "935ffe77db543b1eb536817c48627fcd64b917e1277971f27b1a58d3a6c86f84",
         intel: "e7310752d5ae0dc65a4a88c5069b4d166484042d9034ee14c1d49f4d8a113bf5"

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
