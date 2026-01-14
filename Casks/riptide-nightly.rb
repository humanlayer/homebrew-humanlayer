cask "riptide-nightly" do
  version "20260114151016-nightly"
  sha256 "f43d3d8d534b03035aff6bb2d4867bf9821f80e4545cf9bc9f07378da7c93d6e"

  url "https://github.com/humanlayer/homebrew-humanlayer/releases/download/riptide-nightly-20260114151016-nightly/Riptide-Nightly-darwin-arm64.dmg",
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
