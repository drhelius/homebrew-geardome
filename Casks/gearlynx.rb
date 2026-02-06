cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.1.3"
  sha256 arm:   "41da1a3506b4fe1193e0ef32afceced091b04574ed867a3b7eb34ecea5100673",
         intel: "2d24324c0bc577bda808828cc75a7853317a11f7abe99fe52672af3ebd3c8f60"

  url "https://github.com/drhelius/Gearlynx/releases/download/#{version}/Gearlynx-#{version}-desktop-macos-#{arch}.zip"
  name "Gearlynx"
  desc "Atari Lynx emulator"
  homepage "https://github.com/drhelius/Gearlynx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  container nested: "Gearlynx.app.zip"

  app "Gearlynx.app"

  zap trash: [
    "~/Library/Preferences/com.drhelius.gearlynx.plist",
    "~/Library/Application Support/gearlynx",
  ]
end
