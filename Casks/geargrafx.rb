cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.6"
  sha256 arm:   "f5ec8784c1f5af893579ce46f43b9db3f390559ff96dbc9560f7095a375ea33f",
         intel: "8397ab6d8bdb7e5a48367922fa8d1abc64b96755809229fb88573d1e08313734"

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
