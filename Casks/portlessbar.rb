cask "portlessbar" do
  version "0.3.0"
  sha256 "f9ad1ad9ff473572d34f519279e7206f1402c915c0681f8328ad7f56e48e527f"

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
