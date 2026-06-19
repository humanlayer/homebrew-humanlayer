cask "humanlayer-beta" do
  version "0.117.3"
  sha256 "59691ed8a8ef474dafdb9f6f3c84fc0177110ab126489c4473ced286e2107e27"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.117.3-20260619191751/Riptide-Beta-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "HumanLayer-Beta"
  desc "Beta build of HumanLayer pointing at beta environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "riptide-beta"
  depends_on :macos

  app "HumanLayer-Beta.app"
  binary "#{appdir}/HumanLayer-Beta.app/Contents/Resources/bin/riptided", target: "riptided-beta"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-beta-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-beta-*.jsonl",
    "~/Library/Application Support/HumanLayer-Beta",
    "~/Library/Logs/com.humanlayer.riptide.beta/",
    "~/Library/Preferences/com.humanlayer.riptide.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.beta.savedState",
  ]
end
