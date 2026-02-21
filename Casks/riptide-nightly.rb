cask "riptide-nightly" do
  version "20260221150904-nightly"
  sha256 "98a4ef3c7fb2a1af21476457e564c17bb4c8c0a7a32eb4d504cc2127b7b1b76f"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-nightly-20260221150904-nightly/Riptide-Nightly-darwin-arm64.dmg",
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
