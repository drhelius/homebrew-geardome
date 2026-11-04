cask "gearlynx" do
  arch arm: "arm64", intel: "intel"

  version "1.2.38"
  sha256 arm:   "cecd57b323e280e285fc6ba5a2422ebdf16da988aaa371ab18055c6cfb8f0d50",
         intel: "ae821818f313ec1451b25be340e0ebc8eb65664f59bbf0fe626749834c9c9c77"

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
