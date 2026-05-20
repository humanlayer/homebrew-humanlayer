cask "riptide" do
  version "0.86.0"
  sha256 "10cc8bd196d8b8faa1c45731fe4cf4315430f41e6240e13a8a2f0ce16440a0d7"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.86.0/Riptide-darwin-arm64.dmg",
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
