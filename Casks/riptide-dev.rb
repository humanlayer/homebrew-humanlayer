cask "riptide-dev" do
  version "0.45.1"
  sha256 "5ba7106f00ea95b8ef0deee9715b9231c7ae25e748552a99654d858c029c0420"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.45.1-20260416181011/Riptide-Dev-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Dev"
  desc "Development build of Riptide pointing at dev environment"
  homepage "https://humanlayer.dev/"

  app "Riptide-Dev.app"

  binary "#{appdir}/Riptide-Dev.app/Contents/Resources/bin/riptided", target: "riptided-dev"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/Riptide-Dev",
    "~/Library/Preferences/com.humanlayer.riptide.dev.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.dev.savedState",
    "~/.humanlayer/riptide/logs/riptide-dev-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-dev-*.jsonl",
    "~/Library/Logs/com.humanlayer.riptide.dev/"
  ]
end
