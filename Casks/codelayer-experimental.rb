cask "codelayer-experimental" do
  version "0.1.0-experimental-22329972759"
  sha256 "b2f58040c6f0d4dc0ddb089df9ec3f9c6321ccd53f8e50fd225a7cb3a0a8b551"

  url "https://github.com/humanlayer/humanlayer/releases/download/experimental-0.1.0-experimental-22329972759/CodeLayer-Experimental-darwin-arm64.dmg",
      verified: "github.com/humanlayer/humanlayer/"

  name "CodeLayer Experimental"
  desc "Experimental build of CodeLayer - Bleeding edge features from main branch"
  homepage "https://humanlayer.dev/"

  # No conflicts - can install alongside stable and nightly

  app "CodeLayer-Experimental.app"

  binary "#{appdir}/CodeLayer-Experimental.app/Contents/Resources/bin/humanlayer", target: "humanlayer-experimental"
  binary "#{appdir}/CodeLayer-Experimental.app/Contents/Resources/bin/humanlayer", target: "codelayer-experimental"
  binary "#{appdir}/CodeLayer-Experimental.app/Contents/Resources/bin/hld", target: "hld-experimental"
  binary "#{appdir}/CodeLayer-Experimental.app/Contents/Resources/bin/cld", target: "cld-experimental"

  zap trash: [
    "~/Library/Application Support/CodeLayer-Experimental",
    "~/Library/Preferences/dev.humanlayer.wui.experimental.plist",
    "~/Library/Saved Application State/dev.humanlayer.wui.experimental.savedState",
    "~/.humanlayer/codelayer-experimental*.json",
    "~/.humanlayer/daemon-experimental*.db",
    "~/.humanlayer/daemon-experimental*.sock",
    "~/Library/Logs/dev.humanlayer.wui.experimental/",
    "~/.humanlayer/logs/cld-experimental-*.log",
  ]
end
