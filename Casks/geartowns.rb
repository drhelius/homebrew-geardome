cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "0.0.10"
  sha256 arm:   "7a4113b81400117c0f620502468a1e2710912f594d23e2b2e9f8d35da08ab31a",
         intel: "b7066757f843f3f3f3e68eaf78b5af8f6f8b8a6881e59797a3aa7a7ec406f818"

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
