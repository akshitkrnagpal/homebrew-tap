cask "portlessbar" do
  version "0.1.0"
  sha256 "0521b27c4882dd8aa9fa4555e664530a0b55d288aa04d512345295f512a235d3"

  url "https://github.com/akshitkrnagpal/portlessbar/releases/download/v#{version}/PortlessBar-#{version}-universal.zip"
  name "PortlessBar"
  desc "Native menu bar companion for Portless localhost apps"
  homepage "https://github.com/akshitkrnagpal/portlessbar"

  auto_updates true
  depends_on macos: :sonoma

  app "PortlessBar.app"

  zap trash: [
    "~/Library/Caches/io.akshit.PortlessBar",
    "~/Library/Preferences/io.akshit.PortlessBar.plist",
  ]
end
