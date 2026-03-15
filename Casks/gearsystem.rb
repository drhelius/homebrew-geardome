cask "gearsystem" do
  arch arm: "arm64", intel: "intel"

  version "3.9.1"
  sha256 arm:   "9d91931254741ba547bf6f1c62ed7729064d2f862c8377773d6dba64db4ec2fb",
         intel: "7314cf4c18d124eeb42b5438c7f880fbd2d7366e83141fa2ae5b9feccb5944c4"

  url "https://github.com/drhelius/Gearsystem/releases/download/#{version}/Gearsystem-#{version}-desktop-macos-#{arch}.zip"
  name "Gearsystem"
  desc "Sega Master System / Game Gear / SG-1000 emulator"
  homepage "https://github.com/drhelius/Gearsystem"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  container nested: "Gearsystem.app.zip"

  app "Gearsystem.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearsystem.plist",
    "~/Library/Application Support/gearsystem",
  ]
end
