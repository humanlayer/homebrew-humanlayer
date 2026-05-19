cask "riptide-beta" do
  version "0.85.0"
  sha256 "59f50676240ff0b8176cc0ed90a2d4ed261df0af0419e7f4f4e00a0d781bec42"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.85.0-20260519034005/Riptide-Beta-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Beta"
  desc "Beta build of Riptide pointing at beta environment"
  homepage "https://humanlayer.dev/"

  app "Riptide-Beta.app"

  binary "#{appdir}/Riptide-Beta.app/Contents/Resources/bin/riptided", target: "riptided-beta"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/Riptide-Beta",
    "~/Library/Preferences/com.humanlayer.riptide.beta.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.beta.savedState",
    "~/.humanlayer/riptide/logs/riptide-beta-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-beta-*.jsonl",
    "~/Library/Logs/com.humanlayer.riptide.beta/"
  ]
end
