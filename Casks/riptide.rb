cask "riptide" do
  version "0.94.1"
  sha256 "078216ec1c2248a34a486f0665524e6622fd52b0cf5696b6790aa20f31739827"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-v0.94.1/Riptide-darwin-arm64.dmg",
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
