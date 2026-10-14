cask "humanlayer-beta" do
  version "0.183.0"
  sha256 "3dcf76bdfcbce34669ba93888e58d94b60068d9337c5fc2c605eee6e98a8bcb4"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.183.0-20261014214951/Riptide-Beta-darwin-arm64.dmg"
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
