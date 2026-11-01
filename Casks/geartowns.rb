cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.4"
  sha256 arm:   "0dbb25785463941264ae12cd2863a8c79b7a3b7ebf25e4cc0fdbdbd82e5eed17",
         intel: "1c7ad1184705c4bd554e635a2f2e261bf366b6b0f53691f6723dd3f624dbb26e"

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
