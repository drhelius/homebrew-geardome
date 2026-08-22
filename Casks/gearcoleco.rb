cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.11"
  sha256 arm:   "20a57da46e82e85c186b3640b686dda9eeab1d5c0fcc09520222b70aa3b03f3b",
         intel: "fac43c47648873d8cff2b5205687cfdcada3bfa763ccdc1a863fb64e01fa0471"

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
