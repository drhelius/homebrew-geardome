cask "geartowns" do
  arch arm: "arm64", intel: "intel"

  version "1.0.2"
  sha256 arm:   "c8c4fd09c210932bee344ed5273488364d37489ab9171211ceb5b0986f6713d7",
         intel: "6106bfdeaedf2d1c36941f2fe86b8e470233de4e08176aa5fc77520a66113441"

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
