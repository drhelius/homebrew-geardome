cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.2"
  sha256 arm:   "42d75431a56128216b6cf39c33f5f5c1f585976f7c10700e7c8fc415c9444c8a",
         intel: "22cc9ca4dcf46e669bfa2391d94d3681ef67e54be7b6f021a43935cc510fb0a3"

  url "https://github.com/drhelius/Geargrafx/releases/download/#{version}/Geargrafx-#{version}-desktop-macos-#{arch}.zip"
  name "Geargrafx"
  desc "TurboGrafx-16 / PC Engine / SuperGrafx / PCE CD-ROM² emulator"
  homepage "https://github.com/drhelius/Geargrafx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  container nested: "Geargrafx.app.zip"

  app "Geargrafx.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.geargrafx.plist",
    "~/Library/Application Support/geargrafx",
  ]
end
