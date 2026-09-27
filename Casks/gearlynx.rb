cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.32"
  sha256 arm:   "29c4e64d0c2ecf3f64cc5e92b9de5af13f53ea3d7ca56ac720fb558b2614b785",
         intel: "5d2e83cf718b281b11a0352e344f463472145174ec509121a823a9f2f3cbf682"

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
