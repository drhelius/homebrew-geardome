cask "geardox" do
  arch arm: "arm64", intel: "intel"

  version "0.0.3"
  sha256 arm:   "658fa6fbde90d6e304bd5b116df7c0cce27fa80197aad4c6ebdb33fc559f08a6",
         intel: "3fae0921e83b9c908cc1dbc8ef4b35db86acd91f0cce515578eac6ea15acff2f"

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
