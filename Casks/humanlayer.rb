cask "humanlayer" do
  version "0.170.0"
  sha256 "53c2cf64842e60825a8881599b81a228fb4abaf3acf60cc22378c306d0f0e336"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.170.0/Riptide-darwin-arm64.dmg",
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
