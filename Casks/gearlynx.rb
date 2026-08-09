cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.23"
  sha256 arm:   "1f3e18ca3121277408b94ba8bffac357be841cd7bb50abb12ef04d924dcc833f",
         intel: "78b65621bd8349011945cda1efa07588a2e5d49a18a2cfef79a666255485cc9e"

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
