cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.10"
  sha256 arm:   "6eec71fd8101296cfea1a1648786507e7ca2f6e723bfc80fa62df89806c7d073",
         intel: "003cc77e505a94b7d35f25b1f0a778c557f7ce03880538be709654db3efd078e"

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
