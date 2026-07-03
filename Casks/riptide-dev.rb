cask "riptide-dev" do
  version "0.126.0"
  sha256 "9ab1163ac02e56757657bad1172ff297b4bc22d30980dc836e6d7cff3e2ea3f8"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.126.0-20260703050837/Riptide-Dev-darwin-arm64.dmg",
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
