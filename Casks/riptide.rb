cask "riptide" do
  version "0.98.0"
  sha256 "3aed63ecc47569d583b407dedd2d39c8cf0ec70bb870f842d0ca9c252a3ae876"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.98.0/Riptide-darwin-arm64.dmg",
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
