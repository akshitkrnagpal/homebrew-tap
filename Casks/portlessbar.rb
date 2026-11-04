# frozen_string_literal: true

cask "portlessbar" do
  version "0.4.1"
  sha256 "44fc9b8d75d47a098ea17c61f5a441cca9cbbbede4627b42862fb17f7a02066f"

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
