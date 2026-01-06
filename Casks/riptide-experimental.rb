cask "riptide-experimental" do
  version "20260106194040-experimental"
  sha256 "f4893198f3c32a72ad174a76c6dc86062dd72711bb5127e57648779673fe0dca"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-experimental-20260106194040-experimental/Riptide-Experimental-darwin-arm64.dmg",
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
