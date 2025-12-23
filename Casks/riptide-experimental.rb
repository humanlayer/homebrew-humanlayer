cask "riptide-experimental" do
  version "20251223103949-experimental"
  sha256 "d8482f6f57678ad845febcff6bd98be94fe543c88988a283e269e1223d5ce44b"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-experimental-20251223103949-experimental/Riptide-Experimental-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Experimental"
  desc "Experimental build of Riptide - Bleeding edge features from main branch"
  homepage "https://humanlayer.dev/"

  app "Riptide-Experimental.app"

  binary "#{appdir}/Riptide-Experimental.app/Contents/Resources/bin/riptided", target: "riptided-experimental"

  zap trash: [
    "~/Library/Application Support/Riptide-Experimental",
    "~/Library/Preferences/com.codelayer.riptide.experimental.plist",
    "~/Library/Saved Application State/com.codelayer.riptide.experimental.savedState",
    "~/.humanlayer/riptide/logs/riptide-experimental-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-experimental-*.jsonl",
    "~/Library/Logs/com.codelayer.riptide.experimental/"
  ]
end
