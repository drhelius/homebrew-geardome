cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.9"
  sha256 arm:   "a94b9908677fdf700c6e447db4a2fe566c47bde668f37136ca5040502cc0fd19",
         intel: "848f0f53637d2f633162093799eebb457cbf0081962f4b86df58db0833f2e8b5"

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
