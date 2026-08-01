cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.21"
  sha256 arm:   "ae9901a7613ec91325490908587a3d60c59795628b06a96704cbaced3d29d44e",
         intel: "b1358da254de8858ba26155508505eff25374633b0996de30f8274d49b3f75ed"

  url "https://github.com/drhelius/Gearlynx/releases/download/#{version}/Gearlynx-#{version}-desktop-macos-#{arch}.zip"
  name "Gearlynx"
  desc "Atari Lynx emulator"
  homepage "https://github.com/drhelius/Gearlynx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Gearlynx.app.zip"

  app "Gearlynx.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearlynx.plist",
    "~/Library/Application Support/gearlynx",
  ]
end
