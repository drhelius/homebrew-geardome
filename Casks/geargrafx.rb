cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.13"
  sha256 arm:   "ea3af2f2fd97172666138719f5de9c5be13b0f864aaca24746b5aca2673b884e",
         intel: "65534b0f131774d304973f7dc5771722a0902a67b93dae4a3083806e55cf10d9"

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
