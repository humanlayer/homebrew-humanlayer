cask "riptide-beta" do
  version "0.178.0"
  sha256 "7faede36709dd5a03c1646063dbd4b409c8d5545edcdbb4a4b4b80ba0cf733ca"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-beta-v0.178.0-20260924225658/Riptide-Beta-darwin-arm64.dmg"
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
