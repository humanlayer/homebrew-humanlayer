cask "humanlayer-dev" do
  version "0.121.0"
  sha256 "a1c74ad2499033f698dcd5c62eec882952c069ca1725baf016dc2c97dc50751a"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.121.0-20260624053454/Riptide-Dev-darwin-arm64.dmg",
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
