cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.6.15"
  sha256 arm:   "402d825e8be8e03aa4036e04e503c5ba07eca349db29cd00daf3eee800cb538d",
         intel: "077ead7c181f98fdcb9f546e1463c1d89a93d61ce03831ca9d4c6d225bf82666"

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
