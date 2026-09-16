cask "humanlayer-dev" do
  version "0.175.13"
  sha256 "cf59f58fa7c094420557dcc39e2074885d86135e22e3bb81c2255acce838def5"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.175.13-20260916200702/Riptide-Dev-darwin-arm64.dmg"
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
