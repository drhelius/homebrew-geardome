cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.8"
  sha256 arm:   "29eb626973cf999ab9f405e4902d25f659e7ae5d5ed09ddbe0c9249ea5099898",
         intel: "e3ad82bb434435fc6482ddd0db96d9c678fe5eaff7236cc40c57b98aa68f9069"

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
