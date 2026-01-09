cask "riptide-experimental" do
  version "20260109203535-experimental"
  sha256 "ff7b15beb71090b73a6090ded659a40f0dbbc8a771d99f94b7b880316639fda6"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-experimental-20260109203535-experimental/Riptide-Experimental-darwin-arm64.dmg",
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
