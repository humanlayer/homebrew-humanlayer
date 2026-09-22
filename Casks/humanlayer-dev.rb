cask "humanlayer-dev" do
  version "0.177.0"
  sha256 "a16cb5957d614a255043e568a15d39ea27326dc1f554709b613a6db645d39903"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.177.0-20260922183733/Riptide-Dev-darwin-arm64.dmg"
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
