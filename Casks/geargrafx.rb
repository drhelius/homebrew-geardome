cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.12"
  sha256 arm:   "57327605a1eb2b477aa738404b8fa952d61903d45b37137b54f22e44f30c93b3",
         intel: "53660eefb057c5726c177ec673cb5cc3356abc9a61a63c17f3af4dfc120cf9dc"

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
