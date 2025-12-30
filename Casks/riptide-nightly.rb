cask "riptide-nightly" do
  version "20251230150715-nightly"
  sha256 "44a463fe7ad681acc1a81c67b5e919af93729b56bb6be3028f55288677d6f3be"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-nightly-20251230150715-nightly/Riptide-Nightly-darwin-arm64.dmg",
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
