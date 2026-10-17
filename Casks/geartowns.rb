cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "0.0.6"
  sha256 arm:   "95ec7a88443b23fdfd99c4cadb42906a9271f00cbc45c4493eab232eb7990001",
         intel: "ee2d2e3608a57e8dd8be1acbe174da0a3936ca8ebca38713921d77ba278be3d5"

  url "https://github.com/drhelius/Geartowns/releases/download/#{version}/Geartowns-#{version}-desktop-macos-#{arch}.zip"
  name "Geartowns"
  desc "FM Towns emulator"
  homepage "https://github.com/drhelius/Geartowns"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  container nested: "Geartowns.app.zip"

  app "Geartowns.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.Geartowns.plist",
    "~/Library/Application Support/geartowns",
  ]
end
