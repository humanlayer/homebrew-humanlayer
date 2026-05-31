cask "riptide" do
  version "0.99.5"
  sha256 "2a7b5d420fa205cec032f2e53393da46c1f732dac8da53bbe4d4c9c01ac41f3a"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.99.5/Riptide-darwin-arm64.dmg",
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
