cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.7"
  sha256 arm:   "367a661c4a2144be033134266a52511a48d057131505af1a113ddd088783537b",
         intel: "ef9197004867e258ae90390d44663b0d8bdd160910b505767e148e775a415d5d"

  url "https://github.com/drhelius/Gearcoleco/releases/download/#{version}/Gearcoleco-#{version}-desktop-macos-#{arch}.zip"
  name "Gearcoleco"
  desc "ColecoVision emulator"
  homepage "https://github.com/drhelius/Gearcoleco"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Gearcoleco.app.zip"

  app "Gearcoleco.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearcoleco.plist",
    "~/Library/Application Support/gearcoleco",
  ]
end
