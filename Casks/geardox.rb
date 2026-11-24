cask "geardox" do
  arch arm: "arm64", intel: "intel"

  version "0.0.2"
  sha256 arm:   "57f707540348468e10fc9ca87040ef292ef7f1c3033a61218df3f3d18d0b7814",
         intel: "bfdde153733cacaa2049f2ef620564f6923ded58a2df6fdeed4ff806b7736785"

  url "https://github.com/drhelius/Geardox/releases/download/#{version}/Geardox-#{version}-desktop-macos-#{arch}.zip"
  name "Geardox"
  desc "MS-DOS PC/AT emulator"
  homepage "https://github.com/drhelius/Geardox"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Geardox.app.zip"

  app "Geardox.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.Geardox.plist",
    "~/Library/Application Support/geardox",
  ]
end
