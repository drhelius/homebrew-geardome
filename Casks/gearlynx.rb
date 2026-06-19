cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.14"
  sha256 arm:   "0734e6c1276bec87cf1ae9fd6e1813b2465b606b20103f162fe805645b8d6fba",
         intel: "d80aa0c95fac6a9700ee4339ccd53a179c86a502bb7492536d04eb177edb9f13"

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
