cask "portlessbar" do
  version "0.2.0"
  sha256 "4bbfa6c2a0b0bd7bd3affc4dffe584d73c7c6b2b3934d3c4783fec735a0c6507"

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
