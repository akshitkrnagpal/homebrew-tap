cask "secret-desk" do
  version "1.0.0"
  sha256 "c3221eeee60713160a8ab68be261cff0a0e829f0e075b3ea7bf2e6f36d5d2cb5"

  url "https://github.com/akshitkrnagpal/secret-desk/releases/download/v#{version}/SecretDesk-darwin-arm64-#{version}.zip",
      verified: "github.com/akshitkrnagpal/secret-desk/"
  name "SecretDesk"
  desc "Vercel-like editing experience for Kubernetes secrets"
  homepage "https://github.com/akshitkrnagpal/secret-desk"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "SecretDesk.app"

  zap trash: [
    "~/Library/Application Support/SecretDesk",
    "~/Library/Caches/com.electron.secretdesk",
    "~/Library/Logs/SecretDesk",
    "~/Library/Preferences/com.electron.secretdesk.plist",
    "~/Library/Saved Application State/com.electron.secretdesk.savedState",
  ]
end
