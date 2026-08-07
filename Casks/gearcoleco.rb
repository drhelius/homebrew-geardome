cask "gearcoleco" do
  arch arm: "arm64", intel: "intel"

  version "1.6.9"
  sha256 arm:   "b4e04ebfb258c1ef232b408e207932e2eaa3a151a828c7a46cbba6ec0a59eaaa",
         intel: "51d49ccc0ea17a1129da6cccb23f7a0875c758d372e28536283eb28c78769d68"

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
