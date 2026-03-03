cask "riptide-dev" do
  version "20260303174824-dev"
  sha256 "912ae480d26b6a1c3aa7328088eee4232a72ffd97f0765add7e9787edee03647"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-20260303174824-dev/Riptide-Dev-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Dev"
  desc "Development build of Riptide pointing at dev environment"
  homepage "https://humanlayer.dev/"

  app "Riptide-Dev.app"

  binary "#{appdir}/Riptide-Dev.app/Contents/Resources/bin/riptided", target: "riptided-dev"

  zap trash: [
    "~/Library/Application Support/Riptide-Dev",
    "~/Library/Preferences/com.humanlayer.riptide.dev.plist",
    "~/Library/Saved Application State/com.humanlayer.riptide.dev.savedState",
    "~/.humanlayer/riptide/logs/riptide-dev-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-dev-*.jsonl",
    "~/Library/Logs/com.humanlayer.riptide.dev/"
  ]
end
