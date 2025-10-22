cask "codelayer-experimental" do
  version "0.1.0-experimental-20251022224455"
  sha256 "0ba66929ef1cda0a322e2ee3d617c738ecaa342067266b06ad8c3e13161cf170"

  url "https://github.com/humanlayer/synclayer/releases/download/experimental-0.1.0-experimental-20251022224455/CodeLayer-Experimental-darwin-arm64.dmg",
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
