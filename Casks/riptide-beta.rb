cask "riptide-beta" do
  version "0.170.0"
  sha256 "1824b96ae2ea0e4bf708e9298bd43c91cf5338d6bea4cc2ec0c95211c199f434"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.170.0-20260905195049/Riptide-Beta-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "Riptide-Beta"
  desc "Beta build of HumanLayer pointing at beta environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "humanlayer-beta"
  depends_on :macos

  app "HumanLayer-Beta.app", target: "Riptide-Beta.app"
  binary "#{appdir}/Riptide-Beta.app/Contents/Resources/bin/riptided", target: "riptided-beta"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-beta-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-beta-*.jsonl",
    "~/Library/Application Support/HumanLayer-Beta",
    "~/Library/Logs/com.humanlayer.riptide.beta/",
    "~/Library/Preferences/com.humanlayer.riptide.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.beta.savedState",
  ]
end
