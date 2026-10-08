# frozen_string_literal: true

cask "portlessbar" do
  version "0.3.2"
  sha256 "2de94ff7460c98d20a009a2e5ee4f3555fc99790e2de4130255b3aaf0418db43"

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
