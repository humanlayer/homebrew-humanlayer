cask "humanlayer" do
  version "0.102.3"
  sha256 "aebe03ba40dba567edacf912c31c1219f35fcdcd0c59987874f1c20cbad8c410"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.102.3/Riptide-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "HumanLayer"
  desc "AI coding agent powered by Claude"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "riptide"
  depends_on :macos

  app "HumanLayer.app"
  binary "#{appdir}/HumanLayer.app/Contents/Resources/bin/riptided", target: "riptided"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-prod-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-prod-*.jsonl",
    "~/Library/Application Support/HumanLayer",
    "~/Library/Logs/com.humanlayer.riptide/",
    "~/Library/Preferences/com.humanlayer.riptide.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.savedState",
  ]
end
