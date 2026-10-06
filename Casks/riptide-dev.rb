cask "riptide-dev" do
  version "0.181.1"
  sha256 "aaf9c6e64059997df5b6545b31c919db9a98ae94af32047a7b6f2f20f42cc9f7"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.181.1-20261006195151/Riptide-Dev-darwin-arm64.dmg"
  name "Riptide-Dev"
  desc "Development build of HumanLayer pointing at dev environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "humanlayer-dev"
  depends_on :macos

  app "HumanLayer-Dev.app", target: "Riptide-Dev.app"
  binary "#{appdir}/Riptide-Dev.app/Contents/Resources/bin/riptided", target: "riptided-dev"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-dev-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-dev-*.jsonl",
    "~/Library/Application Support/HumanLayer-Dev",
    "~/Library/Logs/com.humanlayer.riptide.dev/",
    "~/Library/Preferences/com.humanlayer.riptide.dev.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.dev.savedState",
  ]
end
