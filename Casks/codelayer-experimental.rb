cask "codelayer-experimental" do
  version "0.1.0-experimental-20251022221419"
  sha256 "0ffed0711c690b68c5f556acd13e1582cfca8f592da4211661d1af55eedeb17f"

  url "https://github.com/humanlayer/synclayer/releases/download/experimental-0.1.0-experimental-20251022221419/CodeLayer-Experimental-darwin-arm64.dmg",
      verified: "github.com/humanlayer/synclayer/"

  name "CodeLayer Experimental"
  desc "Experimental build of CodeLayer - Bleeding edge features from main branch"
  homepage "https://humanlayer.dev/"

  # No conflicts - can install alongside stable and nightly

  app "CodeLayer-Experimental.app"

  binary "#{appdir}/CodeLayer-Experimental.app/Contents/Resources/bin/humanlayer", target: "humanlayer-experimental"
  binary "#{appdir}/CodeLayer-Experimental.app/Contents/Resources/bin/hld", target: "hld-experimental"

  zap trash: [
    "~/Library/Application Support/CodeLayer-Experimental",
    "~/Library/Preferences/dev.humanlayer.wui.experimental.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.experimental.savedState",
    "~/.humanlayer/codelayer-experimental*.json",
    "~/.humanlayer/daemon-experimental*.db",
    "~/.humanlayer/daemon-experimental*.sock",
    "~/Library/Logs/dev.humanlayer.wui.experimental/",
  ]
end
