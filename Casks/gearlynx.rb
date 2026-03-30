cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.5"
  sha256 arm:   "d6d14684f172105bacb984c0e649294218e7603b3f09aca9db4d6925a8b9b8a9",
         intel: "1a01c7d6e73179edb4ce2244ae545f76412486c87bbd59a640929d0d42ccc335"

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
