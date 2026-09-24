cask "humanlayer-dev" do
  version "0.178.2"
  sha256 "c2fe9c5e4ca9aa81e8c8ce168a25eaa49a7671a03695b395e7f66580ce3473e3"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.178.2-20260924224826/Riptide-Dev-darwin-arm64.dmg"
  name "HumanLayer-Dev"
  desc "Development build of HumanLayer pointing at dev environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "riptide-dev"
  depends_on :macos

  app "HumanLayer-Dev.app"
  binary "#{appdir}/HumanLayer-Dev.app/Contents/Resources/bin/riptided", target: "riptided-dev"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-dev-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-dev-*.jsonl",
    "~/Library/Application Support/HumanLayer-Dev",
    "~/Library/Logs/com.humanlayer.riptide.dev/",
    "~/Library/Preferences/com.humanlayer.riptide.dev.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.dev.savedState",
  ]
end
