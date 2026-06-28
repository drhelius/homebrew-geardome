cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.16"
  sha256 arm:   "372260f4c14e4b0844864d38e2a6945fe051bca8f39858774f6446ac7873d8c3",
         intel: "70da1908270534e4ef7376a752a937bd3aafcca161bb9e84da1c55297d415a6b"

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
