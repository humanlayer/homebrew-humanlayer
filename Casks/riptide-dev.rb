cask "riptide-dev" do
  version "0.11.4"
  sha256 "ac235c7837ed58daf9bab8cc4a5c9bea0b9a06287b1b3202a81ce03003843b4f"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.11.4-20260330175033/Riptide-Dev-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Dev"
  desc "Development build of Riptide pointing at dev environment"
  homepage "https://humanlayer.dev/"

  app "Riptide-Dev.app"

  binary "#{appdir}/Riptide-Dev.app/Contents/Resources/bin/riptided", target: "riptided-dev"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/Riptide-Dev",
    "~/Library/Preferences/com.humanlayer.riptide.dev.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.dev.savedState",
    "~/.humanlayer/riptide/logs/riptide-dev-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-dev-*.jsonl",
    "~/Library/Logs/com.humanlayer.riptide.dev/"
  ]
end
