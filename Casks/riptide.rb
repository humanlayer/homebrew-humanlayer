cask "riptide" do
  version "0.99.9"
  sha256 "55e5aed397c611acaab0d2478424dc2cde805e34081d87bb1a9d4b2e2ddc1521"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.99.9/Riptide-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide"
  desc "AI coding agent powered by Claude (Riptide edition)"
  homepage "https://humanlayer.dev/"

  app "Riptide.app"

  binary "#{appdir}/Riptide.app/Contents/Resources/bin/riptided", target: "riptided"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/Riptide",
    "~/Library/Preferences/com.humanlayer.riptide.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.savedState",
    "~/.humanlayer/riptide/logs/riptide-prod-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-prod-*.jsonl",
    "~/Library/Logs/com.humanlayer.riptide/"
  ]
end
