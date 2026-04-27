cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.9"
  sha256 arm:   "b854dfe53994afec053ad443bc98749ecbe77cd0547019659c66ec765524c423",
         intel: "bf7e6bd1a13b4d80c11a80c1bb0ed00991ff5b55988004ee062002529e2d22c6"

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
