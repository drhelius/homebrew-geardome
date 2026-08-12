cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.24"
  sha256 arm:   "c3f5b61ece59b514f4f4189645eb7c1988b0a0d791a3751fb3cec7b9b1b02849",
         intel: "667726a28b0321bada7714eecdb54fcd82987f3fb80606274a648c3e81a84682"

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
