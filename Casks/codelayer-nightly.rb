cask "codelayer-nightly" do
  version "0.1.0-nightly-20251028"
  sha256 "0df58a9c21ab67a6de2a7bd843ee39c36828b08710988aa28659df123ca91931"

  url "https://github.com/humanlayer/humanlayer/releases/download/nightly-0.1.0-nightly-20251028/CodeLayer-Nightly-darwin-arm64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer Nightly"
  desc "Nightly build of CodeLayer with the latest features"
  homepage "https://humanlayer.dev/"

  conflicts_with cask: "codelayer"

  app "CodeLayer-Nightly.app"

  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/humanlayer-nightly"
  binary "#{appdir}/CodeLayer-Nightly.app/Contents/Resources/bin/hld", target: "hld-nightly"

  zap trash: [
    "~/Library/Application Support/CodeLayer-Nightly",
    "~/Library/Preferences/dev.humanlayer.wui.nightly.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.nightly.savedState",
    "~/.humanlayer/codelayer-nightly*.json",
    "~/.humanlayer/daemon-nightly.db",
    "~/.humanlayer/daemon-nightly.sock",
    "~/Library/Logs/dev.humanlayer.wui.nightly/",
  ]
end
