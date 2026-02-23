cask "riptide-beta" do
  version "20260223211146-beta"
  sha256 "ee46dedef34d7289d0f2423b23d28937ed4df42eb295915061a3e8594eb0120e"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-20260223211146-beta/Riptide-Beta-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Beta"
  desc "Beta build of Riptide pointing at beta environment"
  homepage "https://humanlayer.dev/"

  app "Riptide-Beta.app"

  binary "#{appdir}/Riptide-Beta.app/Contents/Resources/bin/riptided", target: "riptided-beta"

  zap trash: [
    "~/Library/Application Support/Riptide-Beta",
    "~/Library/Preferences/com.humanlayer.riptide.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.beta.savedState",
    "~/.humanlayer/riptide/logs/riptide-beta-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-beta-*.jsonl",
    "~/Library/Logs/com.humanlayer.riptide.beta/"
  ]
end
