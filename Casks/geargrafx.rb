cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.8.3"
  sha256 arm:   "46934579081d324dfde988ee67eadb021805609f32100d63df2b5c322d3e69f0",
         intel: "e0cc09705c124dee9455ecba27ac2df4c03df5378ea9812e37aac36bed28adf9"

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
