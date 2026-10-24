cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.5"
  sha256 arm:   "d42e54e83318562102affb43448ed5e3aa9bc14f7ebf23dd3999df4465cbcadd",
         intel: "bc1bc53d6b154793b1341e5b4d9cde047fd658a48595b42adbb96f237ad25c70"

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
