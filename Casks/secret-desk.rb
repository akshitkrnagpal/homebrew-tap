cask "secret-desk" do
  version "1.1.0"
  sha256 "9f4c0082d175384adc878d577a9cf46df0ae494c8a4fa120c0270f2c27efa1b8"

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
    "~/Library/Caches/io.akshit.secretdesk",
    "~/Library/Logs/SecretDesk",
    "~/Library/Preferences/io.akshit.secretdesk.plist",
    "~/Library/Saved Application State/io.akshit.secretdesk.savedState",
  ]
end
