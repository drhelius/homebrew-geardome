cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "0.0.1"
  sha256 arm:   "d17f406a5b04f6d58f15a0e71b29274c67c894054c5454c62e7aaa9d9b724c9f",
         intel: "aeadcb2acb7aff45c01e81007d1df5f501b8690134a311ac5ec47caaa9360c4a"

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
