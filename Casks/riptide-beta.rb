cask "riptide-beta" do
  version "0.180.0"
  sha256 "f8c86355241f2f78bc88c1d46ef4298e526682d2919493f751d8c0c05af62b83"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.180.0-20260930232632/Riptide-Beta-darwin-arm64.dmg"
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
