cask "riptide-dev" do
  version "0.151.3"
  sha256 "6912eb89121107536037d1d4b948d89d04c2c3557abf15f37cce0f94b776f23a"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.151.3-20260802011345/Riptide-Dev-darwin-arm64.dmg",
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
