cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.12"
  sha256 arm:   "6a32dcf723f8f797a699b3373ffe72bb9465d317fade0119b00ed5c66e4be3bb",
         intel: "348edd70c29499121a969966ca7ebea88222d73a8ba0fada3e2db5a2af393ec6"

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
