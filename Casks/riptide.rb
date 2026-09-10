cask "riptide" do
  version "0.174.0"
  sha256 "a0bc2732cf09a53d9463ce8d2b4ffc60ff8c2dcedc45d0319f46e1b7a050b767"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.174.0/Riptide-darwin-arm64.dmg"
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
