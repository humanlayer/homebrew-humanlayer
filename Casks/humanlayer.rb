cask "humanlayer" do
  version "0.201.0"
  sha256 "529dd9c1c70295ccb1ce7aee89b9d97e67f80805e4ba3f2b99ffaec27473f2e5"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.201.0/Riptide-darwin-arm64.dmg"
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
