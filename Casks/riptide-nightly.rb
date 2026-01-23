cask "riptide-nightly" do
  version "20260123151129-nightly"
  sha256 "58d883cf120da4bc02c8ad0e54d437bac13492308b77003d7e7fb55f860d0cc1"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-nightly-20260123151129-nightly/Riptide-Nightly-darwin-arm64.dmg",
      verified: "github.com/humanlayer/homebrew-humanlayer/"

  name "Riptide-Nightly"
  desc "Nightly build of Riptide with the latest features"
  homepage "https://humanlayer.dev/"

  app "Riptide-Nightly.app"

  binary "#{appdir}/Riptide-Nightly.app/Contents/Resources/bin/riptided", target: "riptided-nightly"

  zap trash: [
    "~/Library/Application Support/Riptide-Nightly",
    "~/Library/Preferences/com.codelayer.riptide.nightly.plist",
    "~/Library/Saved Application State/com.codelayer.riptide.nightly.savedState",
    "~/.humanlayer/riptide/logs/riptide-nightly-*.jsonl",
    "~/.humanlayer/riptide/logs/error-riptide-nightly-*.jsonl",
    "~/Library/Logs/com.codelayer.riptide.nightly/"
  ]
end
