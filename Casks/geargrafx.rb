cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.0"
  sha256 arm:   "c6aaa985f2d3308778a8d955d5647c3f462efdc5fa2bb9f2384ab6513cfd013f",
         intel: "25b1e24f21c3a2fbd78027e05b0d0d2d49c245fa3524bc66401494f19967d0ad"

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
