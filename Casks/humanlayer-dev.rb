cask "humanlayer-dev" do
  version "0.136.0"
  sha256 "a95effb7fb97dc8fec62c2e3d665ae517925216fa03f60d43a95f4135e8e581d"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.136.0-20260710170728/Riptide-Dev-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
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
