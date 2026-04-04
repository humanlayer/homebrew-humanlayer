cask "riptide-dev" do
  version "0.21.2"
  sha256 "ea5f5aa1790f0912199c3fb7796919caedacf3e354c93ffd1a304f5e85eb6897"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.21.2-20260404011808/Riptide-Dev-darwin-arm64.dmg",
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
