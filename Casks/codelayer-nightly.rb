cask "codelayer-nightly" do
  version "0.1.0-nightly-20260109141324"
  sha256 "2e98593edde5c772f4777f82759dd3adb2d3f771f82e6f0f15195b24b029976f"

  url "https://github.com/humanlayer/humanlayer/releases/download/nightly-0.1.0-nightly-20260109141324/CodeLayer-Nightly-darwin-arm64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer Nightly"
  desc "Nightly build of CodeLayer with the latest features"
  homepage "https://humanlayer.dev/"

  app "CodeLayer-Nightly.app"

  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/humanlayer", target: "humanlayer-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/humanlayer", target: "codelayer-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/hld", target: "hld-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/cld", target: "cld-nightly"

  zap trash: [
    "~/Library/Application Support/CodeLayer-Nightly",
    "~/Library/Preferences/dev.humanlayer.wui.nightly.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.nightly.savedState",
    "~/.humanlayer/codelayer-nightly*.json",
    "~/.humanlayer/daemon-nightly.db",
    "~/.humanlayer/daemon-nightly.sock",
    "~/Library/Logs/dev.humanlayer.wui.nightly/",
    "~/.humanlayer/logs/cld-nightly-*.log",
  ]
end
