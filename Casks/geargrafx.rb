cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.9"
  sha256 arm:   "388c16de88a759182f9d6867bebd18de7609de4a9eed3c628cee924eb674610f",
         intel: "b2e09137846b7f16c77f4157a1e7c2637827ee3eeead9a576dc046524aa80cd8"

  url "https://github.com/drhelius/Geargrafx/releases/download/#{version}/Geargrafx-#{version}-desktop-macos-#{arch}.zip"
  name "Geargrafx"
  desc "TurboGrafx-16 / PC Engine / SuperGrafx / PCE CD-ROM² emulator"
  homepage "https://github.com/drhelius/Geargrafx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Geargrafx.app.zip"

  app "Geargrafx.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.geargrafx.plist",
    "~/Library/Application Support/geargrafx",
  ]
end
