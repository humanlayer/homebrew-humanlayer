cask "riptide-beta" do
  version "0.115.2"
  sha256 "bfe9a8748c2f79083bd23d023daf91e2c47a7058cc92ca4c61beba5fe2d5e44d"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.115.2-20260617225930/Riptide-Beta-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"
  name "Riptide-Beta"
  desc "Beta build of HumanLayer pointing at beta environment"
  homepage "https://humanlayer.dev/"

  auto_updates true
  conflicts_with cask: "humanlayer-beta"
  depends_on :macos

  app "HumanLayer-Beta.app", target: "Riptide-Beta.app"
  binary "#{appdir}/Riptide-Beta.app/Contents/Resources/bin/riptided", target: "riptided-beta"

  zap trash: [
    "~/.humanlayer/riptide/logs/error-riptide-beta-*.jsonl",
    "~/.humanlayer/riptide/logs/riptide-beta-*.jsonl",
    "~/Library/Application Support/HumanLayer-Beta",
    "~/Library/Logs/com.humanlayer.riptide.beta/",
    "~/Library/Preferences/com.humanlayer.riptide.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.beta.savedState",
  ]
end
