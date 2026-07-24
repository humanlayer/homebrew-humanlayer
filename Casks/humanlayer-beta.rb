cask "humanlayer-beta" do
  version "0.147.0"
  sha256 "9417dc047b6e556b94891b8e0fe9513e1937ac54f7e658250b37201a698b841a"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.147.0-20260724162059/Riptide-Beta-darwin-arm64.dmg",
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
