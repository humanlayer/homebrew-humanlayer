cask "riptide-beta" do
  version "0.51.11"
  sha256 "d06ad2380bc4f0ddb83e72af27b8d4a09a5699f3acc32f6cd7447230840c69ff"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.51.11-20260428021711/Riptide-Beta-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Beta"
  desc "Beta build of Riptide pointing at beta environment"
  homepage "https://humanlayer.dev/"

  app "Riptide-Beta.app"

  binary "#{appdir}/Riptide-Beta.app/Contents/Resources/bin/riptided", target: "riptided-beta"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/Riptide-Beta",
    "~/Library/Preferences/com.humanlayer.riptide.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.beta.savedState",
    "~/.humanlayer/riptide/logs/riptide-beta-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-beta-*.jsonl",
    "~/Library/Logs/com.humanlayer.riptide.beta/"
  ]
end
