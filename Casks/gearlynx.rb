cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.22"
  sha256 arm:   "8c80fc0f57f6e96cd5de294ada73346460122453e2da363d3e8f0f76b2d7e7eb",
         intel: "5ea93eaa62a23b2b043766f544c305016c3a67ef3ca37816287a57063140aafb"

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
