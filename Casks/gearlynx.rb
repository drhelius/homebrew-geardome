cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.37"
  sha256 arm:   "b78d90cb6042956ba717598ce18a0cd2810afe571ea231a923a296c046a7594b",
         intel: "8233a59df62d2cd7b5bada1528899f8799ec4436bf2d668f4376601a92c79709"

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
