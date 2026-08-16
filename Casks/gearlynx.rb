cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.26"
  sha256 arm:   "40a1e998f11f498b18adad4e0f1df67fc97c9c3a92b3868d2d9aecd851c201b1",
         intel: "c9b71b5a8d11fbd038e50c12678de3609af16658da04d8fe168463f16e623e1c"

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
