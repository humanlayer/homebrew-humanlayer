cask "riptide-dev" do
  version "0.83.0"
  sha256 "674e050ed43b706ec9724e64292f9f091aba2876a996e7f9297c7d893af56096"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-dev-v0.83.0-20260518223442/Riptide-Dev-darwin-arm64.dmg",
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
