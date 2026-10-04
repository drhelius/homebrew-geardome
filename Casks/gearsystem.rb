cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.21"
  sha256 arm:   "6e506e24e6031fa885b1ee1decccbbe7df32acc078506072284da06f7b8ee690",
         intel: "b1411b9abc2aae3f48a6534b02330221082f50474b23fbc942a6eaac5610bc75"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System / Game Gear / SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearsystem.plist",
    "~/Library/Application Support/gearsystem",
  ]
end
