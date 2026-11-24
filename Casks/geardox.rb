cask "geardox" do
  arch arm: "arm64", intel: "intel"

  version "0.0.1"
  sha256 arm:   "23ba2334c1c3659bfc644ddc8e84a8d108c7f23c11d2b1a065f2ac0930cc9640",
         intel: "48b6c3f166eac34876abff96228ae61ac12213fea6588f16a8946272ddb797b5"

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
