cask "riptide-dev" do
  version "0.114.0"
  sha256 "4dac3d2f635d5f28f99c405c8608aa496bf9f4c52037a59fcf129c6c89273083"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.114.0-20260616010120/Riptide-Dev-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
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
