cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.1"
  sha256 arm:   "99f56e21b2f4d5d73bd3dfdcf3104ef3ecd0a990b54c59c883038d030cfb8390",
         intel: "830534bfeab101b95dedbd83d5d773792b8b5ae57d3b3024d67cdad5930a6ca6"

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
