cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.19"
  sha256 arm:   "5204b1a763cd00a8fb13cfb864cdbd2c08edae2ce6ea13b390acdebece4dbe91",
         intel: "857f64d398143130e30f10a9cdf10aec340932be54e43653ce5206ae4736bab0"

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
