cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.5"
  sha256 arm:   "f937095fb8d59184d1995b8b8b9c3b342f02b19c1796f03f88c83f321838a971",
         intel: "e3dd4ed35e26825e8fe906296f8b00faa10a39acb147427d4f622a0e948e2a8a"

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
