cask "geargrafx" do
  arch arm: "arm64", intel: "intel"

  version "1.7.16"
  sha256 arm:   "aa414a063e7d5e74835f41a4956a842825d74a3361c42e463bdcd7430fe9dde3",
         intel: "3960d69f3436f2dda6786f8aac9632fc4f9bed7b2e48256a2ea65b57e679c1b4"

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
