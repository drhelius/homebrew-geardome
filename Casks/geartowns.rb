cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.8"
  sha256 arm:   "096ce334d136c85eaf18d84072a0941f2f5a893cce6fefefe4628afff6f4746f",
         intel: "14e58685488f5e3e4c448d665b5644ae2471753705cdd281480de8c86864548d"

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
