cask "riptide-nightly" do
  version "20260119150934-nightly"
  sha256 "f59952e341ca9cc4a4abdf366f3bf2c417286a87296e389ea466cd1b91ee30c8"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-nightly-20260119150934-nightly/Riptide-Nightly-darwin-arm64.dmg",
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
