cask "riptide" do
  version "0.183.0"
  sha256 "d5db4d98a7cd56df3d7b1a951321997da437a2abe63cef01ee0a0af2f21ce159"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.183.0/Riptide-darwin-arm64.dmg"
  name "Riptide"
  desc "AI coding agent powered by Claude"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "humanlayer"
  depends_on :macos

  app "HumanLayer.app", target: "Riptide.app"
  binary "#{appdir}/Riptide.app/Contents/Resources/bin/riptided", target: "riptided"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-prod-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-prod-*.jsonl",
    "~/Library/Application Support/HumanLayer",
    "~/Library/Logs/com.humanlayer.riptide/",
    "~/Library/Preferences/com.humanlayer.riptide.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.savedState",
  ]
end
